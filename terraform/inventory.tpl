[azure_vms]
%{ for ip in vm_ips ~}
${ip}
%{ endfor ~}