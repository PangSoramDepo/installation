mkdir -p ~/teleport/config ~/teleport/data


docker run --hostname localhost --rm \
  --entrypoint=/bin/sh \
  -v ~/teleport/config:/etc/teleport \
  public.ecr.aws/gravitational/teleport:11.1.2 -c "teleport configure > /etc/teleport/teleport.yaml"


docker run --hostname localhost --name teleport \
  -v ~/teleport/config:/etc/teleport \
  -v ~/teleport/data:/var/lib/teleport \
  -p 3023:3023 -p 3025:3025 -p 3080:3080 \
  public.ecr.aws/gravitational/teleport:11.1.2


# AFTER THIS PLEASE GO INSIDE CONTAINER AND EDIT CONFIG
# PLEASE USE server.yml
nano /etc/teleport/teleport.yaml

# AFTER EDIT PLEASE RESTART THE CONTAINER
