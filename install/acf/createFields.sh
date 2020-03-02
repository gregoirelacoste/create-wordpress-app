modifFile(){
  sed -i "s/key_tpl/$1/g ; s/label_tpl/$2/g ; s/name_tpl/$3/g ; s/type_tpl/$4/g ; s/instructions_tpl/$5/g" $PROJECTDIR/acf/acf.json
}
insertIntoTplPhp(){
  echo "<?php the_field('$field_id'); ?>" >> $THEMEDIR/"$(conf wordpress.theme.name)"/"$(conf $templatePhp)"
}

createFields(){
  countFieldByPages=`conf "wordpress.pages[$i].acf_fields | length"`
  inputFile=$CWAPPINSTALL/acf/template-acf-field.json
  outputFile=$PROJECTDIR/acf/acf.json
  matchPattern="\"fields_page_$id\""
  newPattern="$(sed ':a;N;$!ba;s/\n/\\n/g' $inputFile)"
  templatePhp="wordpress.pages[$i].templatePhp"

  echo $countFieldByPages 'field(s)'
  # Si il y a au moins un field, pour chacun ajout d'un fiel dans le document acf.sjon
  if [ $countFieldByPages -gt 0 ]
    then
      for (( e=0; e<$countFieldByPages; e++))
      do
        echo $((e+1)) / $countFieldByPages
        field="wordpress.pages[$i].acf_fields[$e]"
        field_id=`conf $field.type`"-$e-$i-$id"
          if [ $countFieldByPages = $((e+1)) ]
            then
              #remplace le matchPattern
              sed -i "s/$matchPattern/$newPattern/" $outputFile
            else
              #ajout le contenu après le matchPattern
              sed -i "/$matchPattern/a , $newPattern" $outputFile
           fi
        modifFile $field_id "`conf $field.label`" $field_id "`conf $field.type`" "`conf $field.instructions`"
        insertIntoTplPhp
        done
     fi
}
