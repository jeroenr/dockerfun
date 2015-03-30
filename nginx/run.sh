echo Running consul-template

consul-template -log-level debug -config "/consul/nginx/consul.conf"

tail -F /var/log/nginx/*
