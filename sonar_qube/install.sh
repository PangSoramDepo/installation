# username: admin
# password: admin
docker run -d -p 9100:9000 koolwithk/sonarqube-arm:9.2.4-community



# CONFIG IN build.gradle
# plugins {
#   id "org.sonarqube" version "3.3"
# }

# ./gradlew sonarqube \
#   -Dsonar.projectKey=testing \
#   -Dsonar.host.url=https://sq.pangsoramdepo.com \
#   -Dsonar.login=4b26d5c51ce8b20e0867bae1f89e7720d0e258f0
