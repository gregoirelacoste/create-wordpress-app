cwapp_config="cwapp_config.json"
PROJECTDIR=`pwd`
CWAPPINSTALL=$CWAPPDIR/install

conf(){
  cat $PROJECTDIR/$cwapp_config | jq -r ".$1"
}
