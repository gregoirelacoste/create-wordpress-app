dockerComposeContent="version: '3.3'
services:
  db:
    image: mysql:5.7
    restart: always
    environment:
      MYSQL_DATABASE: $(conf database.name)
      MYSQL_USER: $(conf database.user)
      MYSQL_PASSWORD: $(conf database.password)
      MYSQL_ROOT_PASSWORD: $(conf database.password)
    ports:
      - '$(conf database.port):3306'
    expose:
      - '$(conf database.port)'
    volumes:
      - $(conf database.name):/var/lib/mysql
volumes:
  $(conf database.name):"

localMysql(){
  echo "local sql with sudo"
  sudo mysql -e "CREATE DATABASE `conf database.name` /*\!40100 DEFAULT CHARACTER SET utf8 */;"
  sudo mysql -e "CREATE USER `conf database.user`@`conf database.host` IDENTIFIED BY '`conf database.password`';"
  sudo mysql -e "GRANT ALL PRIVILEGES ON `conf database.name`.* TO '`conf database.user`'@'`conf database.host`';"
  sudo mysql -e "FLUSH PRIVILEGES;"
}

dockerMysql(){
  echo "docker-compose"
  touch docker-compose.yml && echo $dockerComposeContent > docker-compose.yml
  docker-compose up -d && echo "docker start ok"
}

createDatabase(){
    echo "Create DB"
    if [ "$(conf database.docker)" ]
      then
       dockerMysql
      else
        localMysql
      fi
}
