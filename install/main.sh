source $CWAPPINSTALL/coreWP.sh
source $CWAPPINSTALL/database.sh
source $CWAPPINSTALL/wpCli.sh
source $CWAPPINSTALL/plugins.sh
source $CWAPPINSTALL/theme.sh
source $CWAPPINSTALL/pages.sh
source $CWAPPINSTALL/acf.sh

install(){
  echo "Création du wordpress `conf project_name` dans le dossier $PROJECTDIR "
  wpcli
  createDatabase && installCoreWP
  installPlugins
  createTheme
  createPages
  acfCli
}
