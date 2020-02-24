installWPCli(){
  echo "WP CLI n'est pas encore installé, installation en cours"
  curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
  chmod +x wp-cli.phar
  mv wp-cli.phar $BINCLIPATH/wp
}

if type wp
  then
    echo "WP CLI est déjà installé"
  else
    installWPCli
  fi
