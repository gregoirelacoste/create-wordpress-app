init(){
echo "creation du fichier de configuration"
    cp $CWAPPDIR/config.json ./
    if [ $2 ]
      then
        sed -i "s/\$projectname/$2/g" config.json
      fi
}
