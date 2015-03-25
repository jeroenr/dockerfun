echo Running consul-template

consul-template -once -retry 10s -config "/consul/tomcat/consul.conf"

tail -F /home/user/unite/logs/*.log
