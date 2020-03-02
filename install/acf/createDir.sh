createDir(){
  echo "Add acf folder inside $PROJECTDIR"
  if [ -e $PROJECTDIR/acf ]
    then
      echo "exist"
    else
      echo "create acf.json"
      mkdir $PROJECTDIR/acf && touch $PROJECTDIR/acf/acf.json
    fi
}
