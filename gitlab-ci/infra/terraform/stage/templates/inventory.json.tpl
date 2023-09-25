{
  "all": {
    "hosts": {
%{ for index, ip in ips ~}
      "${names[index]}" : {
        "ansible_host": "${ip}"
      }%{ if index < length(ips) - 1 },%{ endif }
%{ endfor ~}
    }
  }
}
