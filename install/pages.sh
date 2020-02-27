createPage(){
  if ls $themeFolder/acf
    then
      echo "exist"
    else
      echo "create acf.json"
      mkdir $themeFolder/acf && touch $themeFolder/acf/acf.json && echo "[" > $themeFolder/acf/acf.json
    fi
  for (( i=0; i<=${#pages}; i++))
    do
      echo $i/${#pages}
      echo "${pages[$i]}"
      cat $CONFIGDIR/createTheme/template-acf-page.json >> $themeFolder/acf/acf.json
      id=$(wp post create --post_type=page --post_title=${pages[$i]} --post_content=contenu --post_status=publish | grep -Eo '[0-9]{1,9}')
      sed -i "s/key_name/key_$id/g ; s/post_id/$id/g" $themeFolder/acf/acf.json
      if [ ${#pages} = $i ]
        then
          echo "]" >> $themeFolder/acf/acf.json
        else
          echo "," >> $themeFolder/acf/acf.json
        fi
    done
}
