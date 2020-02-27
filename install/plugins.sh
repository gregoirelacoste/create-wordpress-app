installPlugins(){
  for plugin in `conf wordpress.plugins`
  do
    wp plugin install $plugin --activate
  done
}
