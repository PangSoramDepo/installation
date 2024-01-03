docker run -d --name=dev-consul --network=nginxproxymanager_default -e CONSUL_BIND_INTERFACE=eth0 -p 8500:8500 -v /data/consul/data:/consul/data consul agent -server -ui -bind 0.0.0.0 -client 0.0.0.0 -bootstrap -bootstrap-expect 1
