# aasdhajkshd_microservices
aasdhajkshd microservices repository

## Content:

* [docker-2 Технология контейнеризации. Введение в Docker](#hw16)
* [docker-3 Docker-образы Микросервисы](#hw17)
* [docker-4 Docker сети, docker-compose](#hw18)

## Docker сети, docker-compose <a name="hw18"></a>

#### Выполненные работы

1. Подключение в облаке docker host'у
```bash
DOCKER_MACHINE="$(yc compute instance create \
 --name docker-host \
 --zone ru-central1-a \
 --core-fraction 5 \
 --cores 2 \
 --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
 --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1804-lts,size=15 \
 --ssh-key ~/.ssh/id_rsa-appuser.pub \
 | awk '/nat:/ { getline; print $2}')"

docker-machine create \
 --driver generic \
 --generic-ip-address=$DOCKER_MACHINE \
 --generic-ssh-user yc-user \
 --generic-ssh-key ~/.ssh/id_rsa-appuser \
 docker-host

docker-machine ls
eval $(docker-machine env docker-host)
```
2. Проверка различных вариантов настройки сетей:
```bash
for i in none host; do docker run -ti --rm --network $i joffotron/docker-net-tools -c ifconfig; done
```
3. Сравнить с выводом команды ifconfig docker-host'а невозможно, так как нет утилиты, можно доустановить *net-tools*
```bash
$ docker-machine ssh docker-host ifconfig
bash: ifconfig: command not found
exit status 127

$ docker-machine ssh docker-host which ifconfig
exit status 1

$ docker-machine ssh docker-host which ip
/sbin/ip

$ docker-machine ssh docker-host ip add
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether d0:0d:43:72:59:ac brd ff:ff:ff:ff:ff:ff
    inet 10.128.0.18/24 brd 10.128.0.255 scope global eth0
       valid_lft forever preferred_lft forever
    inet6 fe80::d20d:43ff:fe72:59ac/64 scope link
       valid_lft forever preferred_lft forever
4: docker0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default
    link/ether 02:42:28:3b:9c:07 brd ff:ff:ff:ff:ff:ff
    inet 172.17.0.1/16 brd 172.17.255.255 scope global docker0
       valid_lft forever preferred_lft forever

```
5. После запуска несколько раз команды
```bash
docker run --network host -d nginx
```
*docker ps* выдает 4 новых экземпляра контейнеров с одного образа с разными именами, но если будет условие использование порта, напрмер, -p 8080:80, то последующие запуски будут неудачны, так как порт будет занят
6. Создана ссылка на *docker-host*'е машине
```bash
$ docker-machine ssh docker-host sudo ln -s /var/run/docker/netns /var/run/netns

$ docker-machine ssh docker-host ls -Al /var/run/netns
lrwxrwxrwx 1 root root 21 Sep 15 13:57 /var/run/netns -> /var/run/docker/netns
```
7. Повторили 5-й пункт с указанием сетей: none и host. Список изменений *namespace*'ов . При использовании сети *None* есть сети на каждый экземпляр:
```text
$ docker-machine ssh docker-host sudo ip netns
7c592d309a71
8ccb91432f3e
95595d213eee
c98d7766dd7a
default
```
А при *host* получаем только один экземпляр, так как нет возможности запустить из-за конфликта использованного порта в одном *net-namespace*'е:
```text
$ docker run -it --network host nginx
/docker-entrypoint.sh: Configuration complete; ready for start up
2023/09/15 14:11:47 [emerg] 1#1: bind() to 0.0.0.0:80 failed (98: Address already in use)
nginx: [emerg] bind() to 0.0.0.0:80 failed (98: Address already in use)
...
$ docker ps
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS         PORTS     NAMES
a56ecab5ee9c   nginx     "/docker-entrypoint.…"   2 minutes ago   Up 2 minutes             inspiring_burnell
$ docker-machine ssh docker-host sudo ip netns
default
```
8. Создана по-умолчанию bridge-сеть в docker и проверена недоступность сервисов по *DNS*-именам, которые прописанны в ENV-переменных Dockerfile'ов. Проверено, что с указанием при запуске имен *--name=comment*, *--name=post* всё равно не работает, если не прописать два имени к *docker*'у БД. Поэтому подключение к MongoDB нужно указывать с переменной, например для **comment** docker'а *-e COMMENT_DATABASE_HOST=mongo_db* или использовать *--network-alias*, как в предыдущем ДЗ.
9. Созданы дополнительно две сети: *front_net* и *back_net* и проверена работа запуска контейнеров в разных сетях.
```bash
docker network create back_net --subnet=10.0.2.0/24
docker network create front_net --subnet=10.0.1.0/24
```
10. До момента подключения серверов **post** и **comment** к сетям, у серверов появляется дополнительный интерфейс к этим сетям - *eth1*, таким образом сервер "становится" двухногим.
```bash
$ docker exec -it comment ip addr
...

41: eth1@if42: <BROADCAST,MULTICAST,UP,LOWER_UP,M-DOWN> mtu 1500 qdisc noqueue state UP
link/ether 02:42:0a:00:01:04 brd ff:ff:ff:ff:ff:ff
inet 10.0.1.4/24 brd 10.0.1.255 scope global eth1
valid_lft forever preferred_lft forever
```
11. Рассмотрен сетевой стек bridge network driver'а с доустановкой *bridge-utils* и *net-tools*
```bash
yc-user@docker-host:~$ for i in $(ifconfig | grep br- | cut -d":" -f1); do brctl show $i; done
bridge name     bridge id               STP enabled     interfaces
br-6dfa6a0eeb0b         8000.02428bf36707       no
bridge name     bridge id               STP enabled     interfaces
br-ca3da3d4c146         8000.0242c218da7c       no
bridge name     bridge id               STP enabled     interfaces
br-f3669bbb7452         8000.0242b16ce30c       no              veth52e1e2e
                                                                vetha8e49f0
                                                                vethb32d61a
                                                                vethfab4bc2

$ ps ax | grep docker-proxy
10741 ?        Sl     0:00 /usr/bin/docker-proxy -proto tcp -host-ip 0.0.0.0 -host-port 9292 -container-ip 10.0.1.2 -container-port 9292
10747 ?        Sl     0:00 /usr/bin/docker-proxy -proto tcp -host-ip :: -host-port 9292 -container-ip 10.0.1.2 -container-port 9292

$ sudo iptables -nL -t nat
...

Chain POSTROUTING (policy ACCEPT)
target     prot opt source               destination
MASQUERADE  all  --  10.0.1.0/24          0.0.0.0/0
MASQUERADE  all  --  10.0.2.0/24          0.0.0.0/0
MASQUERADE  all  --  172.17.0.0/16        0.0.0.0/0
MASQUERADE  tcp  --  10.0.1.2             10.0.1.2             tcp dpt:9292
```

12. Установлен docker-compose на локальную машину и собрагы образы приложения reddit
13. Приложение reddit с помощью docker-compose запускается
```bash
$ docker ps
CONTAINER ID   COMMAND                  CREATED         STATUS         PORTS                                       NAMES
a942fd193317   "docker-entrypoint.s…"   7 minutes ago   Up 6 minutes   27017/tcp                                   src-post_db-1
a30c3ff2ba3b   "puma"                   7 minutes ago   Up 6 minutes                                               src-comment-1
babc751f2789   "python3 post_app.py"    7 minutes ago   Up 6 minutes                                               src-post-1
b713005ef641   "puma"                   7 minutes ago   Up 6 minutes   0.0.0.0:9292->9292/tcp, :::9292->9292/tcp   src-ui-1
```
14. Файл *.env* внесён в .gitingore, выполнена копия в *.env.exmaple*
15. Изменён docker-compose.yml для случая использования несколько bridge сетей, сетевых псевдонимов
16. Ответ на вопрос, что все создаваемые docker-compose сущности имеют одинаковый префикс и формирование имен контейнеров зависит от нескольких факторов:
- имя сервиса: Имя контейнера обычно базируется на имени сервиса, определенного в файле docker-compose.yml. Например, если сервис с именем web, Docker Compose будет использовать это имя в формировании имени контейнера.
- префикс проекта: Docker Compose автоматически добавляет префикс, основанный на именовании проекта Docker Compose. Если не явно указано имя проекта с помощью флага -p или переменной окружения COMPOSE_PROJECT_NAME, Docker Compose использует имя директории, где находится файл docker-compose.yml, как имя проекта. Префикс проекта добавляется к именам контейнеров, чтобы обеспечить уникальность, если вы используете несколько проектов.
- суффикс номера инстанса (по умолчанию): Если не задано явное имя контейнера с помощью container_name в файле docker-compose.yml, Docker Compose добавит уникальный номер инстанса в конце имени контейнера. Например, если у вас есть сервис с именем web и два контейнера этого сервиса, их имена могут выглядеть как myproject-web-1 и myproject-web-2, где myproject - это имя проекта, web - имя сервиса, а 1 и 2 - номера инстансов.
17. Явное имя контейнера, если указано: Если явно указано имя контейнера с помощью параметра container_name в файле docker-compose.yml, то будет использоваться это имя вместо автоматически сгенерированного.

#### Задания со *star*
1. Создан docker-compose.override.yml
2. Для изменения настроек приложения, возможно выполнить подключечния тома, как и для БД.
```bash
$ docker-machine ssh docker-host sudo ls -Al /var/lib/docker/volumes/src_ui_app/_data
total 48
-rw-r--r-- 1 root root  396 Sep 13 09:01 config.ru
...
```
3. Для запуска puma приложений в режиме диагностики с двумя процессами *--debug* и *-w 2* можно добавить **command**: puma --debug -w 2
```bash
$ docker ps
CONTAINER ID   IMAGE                      COMMAND                  CREATED         STATUS         PORTS                                       NAMES
f441fae2fbcd   23f03013e37f/ui:1.0        "puma --debug -w 2"      9 seconds ago   Up 4 seconds   0.0.0.0:8080->9292/tcp, :::8080->9292/tcp   src-ui-1
...

$ docker logs $(docker ps -a -q --filter "name=src-ui-1") | head -5
[1] Puma starting in cluster mode...
[1] * Version 3.10.0 (ruby 2.3.1-p112), codename: Russell's Teapot
[1] * Min threads: 0, max threads: 16
[1] * Environment: development
[1] * Process workers: 2
```

## Микросервисы <a name="hw17"></a>

#### Выполненные работы

1. Установлен **hadolint**'ер из AUR и проверены *Dockerfile*'ы **ui/post/comment**, здесь по рекомендациям DL3020 внесены изменения
2. Выполнены подготовка и подключение к ранее созданному Docker host’у
3. Организована новая структура приложения из архива *https://github.com/express42/reddit/archive/microservices.zip* в папке *src*
4. Внесены изменения в *Dockerfile*'ы:
- для **ui** добавлена версия к RUN
```dockerfile
gem install bundler -v 2.3.26
```
- для **comment**:
  - изменен источник образа на *ruby:2.2.10-alpine*
  - для исправления ошибки со сборкой Requested MarkupSafe>=2.0 заменён ADD на COPY
```dockerfile
FROM python:3.6.0-alpine
WORKDIR /app
COPY VERSION *.py requirements.txt VERSION ./
RUN apk --no-cache --update add build-base \
    && pip install --upgrade pip \
    && pip install -r /app/requirements.txt
...
```
- для **post** добавлено обновление pip
```
dockerfile pip install --upgrade pip
```
5. К запуску контейнера ДБ установлена версия для совместимости со старыми версиями приложений
```bash
docker run -d \
  --network=reddit --network-alias=post_db --network-alias=comment_db \
  --volume reddit_db:/data/db \
  mongo:4.4.24
```
6. Все контейнеры собраны, сеть и том *reddit_db* для ДБ добавлены для сохранения потсов, прилоежния успешно запущены и проверена работоспособность http://\<docker-host-ip\>:9292/
```bash
DOCKER_MACHINE="$(yc compute instance create \
 --name docker-host \
 --zone ru-central1-a \
 --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
 --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1804-lts,size=15 \
 --ssh-key ~/.ssh/id_rsa-appuser.pub \
 | awk '/nat:/ { getline; print $2}')"

docker-machine create \
 --driver generic \
 --generic-ip-address=$DOCKER_MACHINE \
 --generic-ssh-user yc-user --generic-ssh-key ~/.ssh/id_rsa-appuser \
 docker-host

docker-machine ls
eval $(docker-machine env docker-host)
```
7. Оптимизация образа образа **ui**
```text
$ docker images
REPOSITORY   TAG             IMAGE ID       CREATED          SIZE
ui           3.0             6eeb034379b9   3 minutes ago    225MB
ui           1.0             b7eb7bded98b   44 minutes ago   482MB
```

#### Задания со *star*

1. Перезапущены контейнеры контейнеры с другими сетевыми алиасами с префиксом "test_", необходмо указать новые ENV в команде
```bash
docker run -d --network=reddit --network-alias=test_post_db --network-alias=test_comment_db -v reddit_db:/data/db mongo:4.4.24
docker run -d --network=reddit --network-alias=test_post -e POST_DATABASE_HOST=test_post_db post:1.0
docker run -d --network=reddit --network-alias=test_comment -e COMMENT_DATABASE_HOST=test_comment_db comment:1.0
docker run -d --network=reddit -p 9292:9292 -e POST_SERVICE_HOST=test_post -e COMMENT_SERVICE_HOST=test_comment ui:1.0
```
2. Создан *Dockerfile.01* для **ui** образ на основе Alpine, как и **comment**
```dockerfile
docker build -t <dockerhub-login>/ui:3.0 ./ui --file ui/Dockerfile.01
```
3. Запуск контейнера **mongo** с volume reddit_db сохраняет данные ДБ в папке */var/lib/docker/volumes/reddit_db/_data* и после перезапуска пост остается доступен на портале

## Введение в Docker <a name="hw16"></a>

#### Выполненные работы

1. Создан репозиторий **docker-2** и устанавлены **docker** и **docker-tools**
2. Создан новый проект **docker**
3. Создан там **docker-host** с помощью *docker-machine*
4. Выполнено подключение к удаленному *docker instance* в **docker-hub**

#### Задания со *star*

1. В *docker-1.log* внесена информация по выполнению реализации в виде прототипа в директории /docker-monolith/infra/:
-  *packer* в связке с *ansible*, файл *docker.json* - шаблон пакера, который создает с ansible playbook образ в облаке.
-  *terraform* со структурой *terraform/stage* и модулей *modules/docker*,
-  *ansible* с учетом ролей и playbooks для *docker* terraform модуля
2. В файле *docker-2-star.log* приводится результат создания инфрастуктуры с помошью terraform'а и ранее созданного *packer*'ом образа, где используется счётчик (их количество задается переменной):
3. Изменен *outputs.tf* так, что можно создавать различные ansible inventory: INI, YAML, JSON
4. Добавлен для автоматизации provisioners для уставноки docker'а reddit в облачные docker'ы в ЯОблаке с учетом сгенерированного в output динамического интентори.
- результат выполнения в
5. В файле *docker-2-additional-star.log* лог автоматизиванного выполения за раз развертывания docker'ов по счётчику, а так же сразу выполнение установки и запуска приложений в контейнерах.
6. Добавлены *null_resource*'ы для запуска ansible playbook'а
