source $CWAPPACF/createFields.sh

addPage(){
  cat $CWAPPINSTALL/acf/template-acf-page.json >> $PROJECTDIR/acf/acf.json
  id=$(wp post create --post_type="page" --post_title="`conf "wordpress.pages[$i].title" | sed -e "s/ /_/g"`" --post_content="contenu" --post_status="publish" | grep -Eo '[0-9]{1,9}')
  sed -i "s/key_tpl/key_$id/g ; s/id_tpl/$id/g ; s/title_tpl/`conf "wordpress.pages[$i].title"` $id/g ; s/fields_page_changeid/fields_page_$id/g" $PROJECTDIR/acf/acf.json
}

openArrayCarract(){
  if [ $i = 0 ]
    then
      echo "[" >> $PROJECTDIR/acf/acf.json
    fi
}
closeArrayOrAddComa(){
  if [ $countpages = $((i+1)) ]
    then
      echo "]" >> $PROJECTDIR/acf/acf.json
    else
      echo "," >> $PROJECTDIR/acf/acf.json
    fi
}

createPageLoop(){
  for (( i=0; i<$countpages; i++))
  do
    openArrayCarract
    echo $((i+1))/$countpages "`conf "wordpress.pages[$i].title"`"
    addPage
    createFields
    closeArrayOrAddComa
  done
}
