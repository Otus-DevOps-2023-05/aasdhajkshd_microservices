{
  "host": {
    "hosts": {
%{ for index, ip in host_ips ~}
      "${host_names[index]}" : {
        "ansible_host": "${ip}"
      }%{ if index < length(host_ips) - 1 },%{ endif }
%{ endfor ~}
    }
  },
  "logging": {
    "hosts": {
%{ for index, ip in logging_ips ~}
      "${logging_names[index]}" : {
        "ansible_host": "${ip}"
      }%{ if index < length(logging_ips) - 1 },%{ endif }
%{ endfor ~}
    }
  }
}
