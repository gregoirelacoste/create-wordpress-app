cwapp_config="cwapp_config.json"
PROJECTDIR=`pwd`
CWAPPINSTALL=$CWAPPDIR/install
wp(){
  $PROJECTDIR/wp-cli.phar $*
}
conf(){
  cat $PROJECTDIR/$cwapp_config | jq -r ".$1"
}
THEMEDIR=$PROJECTDIR/wp-content/themes
