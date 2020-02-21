installPlugins(){
  cd $dossierLocal/$projectname/wp-content/plugins
  for plugin in $plugins
  do
    wget $plugin
    unzip *.zip
    rm *.zip
  done
}