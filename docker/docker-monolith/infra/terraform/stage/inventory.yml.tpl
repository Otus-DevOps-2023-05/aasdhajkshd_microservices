${yamlencode({
  "all": {
    "hosts": {
      for index, name in names:
        "${name}" => {
          "ansible_host": "${ips[index]}"
        }
    }
  }
})}
