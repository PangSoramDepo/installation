#################################
#                               #
#      DOMIAN CONFIGURATION     #
#                               #
#################################

# CLOUDFLARE CONFIG
# CONFIG YOUR DOMAIN POINT TO YOUR PUBLIC IP ADDRESS AND DISABLE PROXY

# ROUTER CONFIG
# GO TO YOUR ROUTER WEB PORTAL AND CONFIG PORT FORWARD
# CONFIG PORT 3080 (WEB), 3025 POINT TO YOUR SERVER



#################################
#                               #
#       ADDITIONAL COMMMAND     #
#                               #
#################################

# RUN TELEPORT IN CONTAINER
nohup teleport start -c /etc/teleport/teleport.yaml &

# FOT GET CA PIN
tctl status

# CREATE USER
tctl users add pangsoramdepo --logins=root,ubuntu,pi --roles=access,editor

# IN CASE ERROR PLEASE TRY RUN THIS
rm -rf /var/lib/teleport/
