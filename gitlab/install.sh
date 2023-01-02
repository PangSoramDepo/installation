# COMMENT --publish IN CASE THAT PORT ALREADY BIND
# AND YOU CAN CONFIG NGINX REDIRECT DIRECTLY TO THAT CONTAINER
# OMG: GITLAB REALLY CONSUME CPU AND RAM

docker run --detach \
  --hostname 127.0.0.1 \
#   --publish 443:443 --publish 80:80 --publish 22:22 \
  --name gitlab \
  --restart always \
  --volume $GITLAB_HOME/config:/etc/gitlab \
  --volume $GITLAB_HOME/logs:/var/log/gitlab \
  --volume $GITLAB_HOME/data:/var/opt/gitlab \
  yrzr/gitlab-ce-arm64v8:latest

