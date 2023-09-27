[docker]
%{ for index, name in names ~}
${name} ansible_host=${ips[index]}
%{ endfor ~}
