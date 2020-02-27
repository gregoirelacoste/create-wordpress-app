installWPCli(){
  echo "WP CLI n'est pas encore installé, installation en cours"
  curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
  chmod +x wp-cli.phar
  mkdir $PROJECTDIR/wp
  mv wp-cli.phar $PROJECTDIR/wp
}

wpcli(){
  if type $PROJECTDIR/wp
    then
      echo "WP CLI est déjà installé"
    else
      installWPCli
    fi
}
