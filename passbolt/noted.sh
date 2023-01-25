# COMMAND FOR CREATE USER
docker exec passbolt-app su -m -c "/usr/share/php/passbolt/bin/cake passbolt register_user -u pangsoramdepo@gmail.com -f Pang -l SoramDepo -r admin" -s /bin/sh www-data