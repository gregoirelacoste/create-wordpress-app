createDatabase(){
    echo "Create DB"
    sudo mysql -e "CREATE DATABASE `conf database.name` /*\!40100 DEFAULT CHARACTER SET utf8 */;"
    sudo mysql -e "CREATE USER `conf database.user`@`conf database.host` IDENTIFIED BY '`conf database.password`';"
    sudo mysql -e "GRANT ALL PRIVILEGES ON `conf database.name`.* TO '`conf database.user`'@'`conf database.host`';"
    sudo mysql -e "FLUSH PRIVILEGES;"
    }
