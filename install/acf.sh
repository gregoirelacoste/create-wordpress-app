acfCli(){
  #install acf CLI plugin and import data
  git clone https://github.com/hoppinger/advanced-custom-fields-wpcli.git $PROJECTDIR/wp-content/plugins/advanced-custom-fields-wpcli
  wp plugin activate advanced-custom-fields-wpcli
  wp acf import --json_file=$PROJECTDIR/acf/acf.json
}
