debug(){
  if `conf wordpress.debug`
   then
     debug="define( 'WP_DEBUG', true ); define( 'WP_DEBUG_LOG', true );"
   else
     debug="define( 'WP_DEBUG', false ); define( 'WP_DEBUG_LOG', false );"
  fi
}

installCoreWP(){
    echo "Téléchargement et Installation de WP"
    wp core download --locale=`conf wordpress.install.lang`
    echo "configuration de wp-config"
    wp config create --dbname=`conf database.name` --dbuser=`conf database.user` --dbpass=`conf database.password` --dbhost=`conf database.host` --dbprefix=`conf database.prefix` --extra-php=$debug
    echo "Core install de WP"
    wp core install --url=`conf wordpress.url` --title=`conf wordpress.title` --admin_user=`conf wordpress.install.user` --admin_password=`conf wordpress.install.password` --admin_email=`conf wordpress.install.email`
    wp option update siteurl http://`conf wordpress.url`
    wp option update home http://`conf wordpress.url`
}
