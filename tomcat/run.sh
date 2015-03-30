echo Running consul-template

consul-template -log-level debug -config "/consul/tomcat/consul.conf"

tail -F /home/user/unite/logs/*.log
