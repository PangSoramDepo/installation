# BEFORE RUN THIS DOCKER COMPOSE PLEASE CREATE CONFIG FILE IN FILE AND BIND TO DOCKER IN DOCKER COMPOSE
# logstash.yml, logstash.conf

# IN CASE WE USE V7.9.2
# logstash.yml, logstash.conf, kibana.yml, elasticsearch.yml

# CONFIG ELASTICSEARCH v7.9.2
nano /etc/sysctl.conf
# vm.max_map_count = 262144
sysctl -w vm.max_map_count=262144
systemctl restart docker



# ENABLE AUTHENTICATION ON ELASTICSEARCH
# GO INSIDE ELASTICSEARCH CONTAINER AND THEN TYPE
echo "xpack.security.enabled: true" >> /usr/share/elasticsearch/config/elasticsearch.yml

# ENABLE AUTHENTICATION ON KIBANA 
# GO INSIDE KIBANA CONTAINER AND THEN TYPE
# MAKE SURE SET THESE CONFIG BELOW TO FILE /usr/share/kibana/config/kibana.yml
elasticsearch.username: "kibana_system"
elasticsearch.password: "your_password"
# COMMAND FOR SET UP PASSWORD
/usr/share/elasticsearch/bin/elasticsearch-setup-passwords interactive


# NOTED IF LOGSTASH HAVE ERROR 403 TO INSTALL TEMPLATE WITH USER logstash_system
# GO TO KIBANA AND CREATE ROLE AND GRANDE ALL PERMISSION TO THAT ROLE
# CREATE NEW USER WITH PREVIOUS ROLE THAT WE ARE JUST CREATE
# CHANGE USER AND PASSWORD AND LOGSTASH CONFIG logstash.conf and logstash.yml
