generateFile(){
  echo "creation du fichier de configuration"
  cp $CWAPPDIR/config.json ./$cwapp_config
  if [ $1 ]
    then
      sed -i "s/\$projectname/$1/g" $cwapp_config
    fi
}

init(){
  if test -f $cwapp_config
    then
      echo "already exist, would you want to regenerate one ? (yes or no)"
      read response
      if [ $response = "yes" ]
        then
          echo "en cours"
          generateFile $1
      else
        echo 'stop'
      fi
    else
      generateFile $1
    fi
}
