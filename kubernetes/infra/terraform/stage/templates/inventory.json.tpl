{
  "masters": {
    "hosts": {
%{ for index, ip in master_ips ~}
      "${master_names[index]}" : {
        "ansible_host": "${ip}"
      }%{ if index < length(master_ips) - 1 },%{ endif }
%{ endfor ~}
    }
  },
  "workers": {
    "hosts": {
%{ for index, ip in worker_ips ~}
      "${worker_names[index]}" : {
        "ansible_host": "${ip}"
      }%{ if index < length(worker_ips) - 1 },%{ endif }
%{ endfor ~}
    }
  }
}
