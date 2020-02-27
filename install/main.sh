source ./downloadWPsh
source ./serveurIndexsh
source ./createDatabasesh
source ./installWPsh
source ./installWPClish
source ./installPluginssh
source ./createThemesh

dir=`pwd`
conf(){
  cat config.json | jq -r ".$1"
}

install(){
  echo "Création du wordpress `conf project_name` dans le dossier $dir'/'`conf project_name` "
  downloadWP
  echo "Create Create DB"
  databaseCreate
  # serverIndex
  echo "InstallWP"
  installWP
  installWPCli
  installPlugins
  createTheme
  echo "Veuillez entre le nom du projet (sans espace)"
}
