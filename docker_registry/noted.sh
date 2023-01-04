# CLIENT
# docker tag ${source-image-name} ${domain}/${image-name}:${version}
docker tag adminer dr.pangsoramdepo.com/adminer:1.0.0
docker push dr.pangsoramdepo.com/adminer:1.0.0

# DOCKER DESKTOP GO TO DASHBOARD -> SETTING -> DOCKER ENGINE
"insecure-registries": [
    "dr.pangsoramdepo.com"
]
