installPlugins(){
  cd $dossierLocal/$projectname/wp-content/plugins
  for plugin in $plugins
  do
    wp plugin install $plugin --activate
  done
}
