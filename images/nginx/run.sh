echo Running consul-template

consul-template -once -retry 10s -config "/consul/nginx/consul.conf"

tail -F /var/log/nginx/*
