.DEFAULT_GOAL := help
DOCKER_ENV := docker/.env
USER_NAME := $(shell awk -F'=' '/USERNAME/ { print $$2 }' ${DOCKER_ENV})
THIS_FILE := $(lastword $(MAKEFILE_LIST))
export USER_NAME
.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-16s\033[0m %s\n", $$1, $$2}'

##################################################
# Создание (build) docker-образов и пуш (push) в docker.io
##################################################

.PHONY: env
env: ## Для создания образа необходимо получить имя пользователя на Github из переменной .env
	eval $$(docker-machine env docker-host)
	eval $$(export USER_NAME=${USER_NAME})
	@echo ${USER_NAME}

.PHONY: docker-login
docker-login: ## Для отправки образова в docker.io требуется аутентификация
	docker login -u ${USER_NAME} docker.io

.PHONY: build-all ## Создание всех docker-образов
build-all: env build-ui build-comment build-post build-prometheus build-blackbox

.PHONY: build-ui ## Создание docker-образа для контейнера ./src/ui
build-ui: env ./src/ui/docker_build.sh ./src/ui/*
	cd ./src/ui && bash docker_build.sh && cd -

.PHONY: build-comment ## Создание docker-образа для контейнера ./src/comment
build-comment: env ./src/comment/docker_build.sh ./src/comment/*
	cd ./src/comment && bash docker_build.sh && cd -

.PHONY: build-post ## Создание docker-образа для контейнера ./src/post-py
build-post: env ./src/post-py/docker_build.sh ./src/post-py/*
	cd ./src/post-py && bash docker_build.sh && cd -

.PHONY: build-blackbox ## Создание docker-образа для контейнера ./monitoring/blackbox/
build-blackbox: env ./monitoring/blackbox/*
	docker build -t $$USER_NAME/blackbox ./monitoring/blackbox/

.PHONY: build-prometheus ## Создание docker-образа для контейнера ./monitoring/prometheus/
build-prometheus: env ./monitoring/prometheus/*
	docker build -t $$USER_NAME/prometheus ./monitoring/prometheus/

.PHONY: push-all ## Пуш (push) созданных docker-образов в Docher Hub
push-all: env push-ui push-comment push-post push-prometheus push-blackbox

.PHONY: push-ui
push-ui: docker-login ## Пуш (push) созданных docker-образа ui
	docker push $$USER_NAME/ui

.PHONY: push-comment
push-comment: docker-login ## Пуш (push) созданных docker-образа comment
	docker push $$USER_NAME/comment

.PHONY: push-post
push-post: docker-login ## Пуш (push) созданных docker-образа post
	docker push $$USER_NAME/post

.PHONY: push-prometheus
push-prometheus: docker-login ## Пуш (push) созданных docker-образа prometheus
	docker push $$USER_NAME/prometheus

.PHONY: push-blackbox
push-blackbox: docker-login ## Пуш (push) созданных docker-образа blackbox
	docker push $$USER_NAME/blackbox
