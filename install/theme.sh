createTheme(){
  echo "Creation du thème `conf wordpress.theme.name`"
  cp -r $CWAPPINSTALL/theme $THEMEDIR
  mv $THEMEDIR/theme $THEMEDIR/`conf wordpress.theme.name`
  sed -i "s/theme_name/`conf wordpress.theme.name`/g ; s/author_name/`conf wordpress.theme.author`/g ; s/description_txt/`conf wordpress.theme.description`/g ; s/author_url/`conf wordpress.theme.author_url`/g" $THEMEDIR/`conf wordpress.theme.name`/style.css
  wp theme activate `conf wordpress.theme.name`
  wp theme delete --all
}
