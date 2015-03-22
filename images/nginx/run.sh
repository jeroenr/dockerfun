echo Running consul-template

consul-template -once -retry 10s -config "/home/user/consul/consul.conf"

tail -f /var/log/nginx/*