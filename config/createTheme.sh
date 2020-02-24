styleCSS="/*
Theme Name: $themeName
Author: $wpUserName
Author URI: $URI
Description: $descriptionTheme
Requires at least: WordPress 5.0
Version: 0.1.0
*/"

functionsPHP="<?php
add_theme_support( 'post-thumbnails' );
add_theme_support( 'title-tag' );"

index="<?php get_header(); ?>
<h1>LV1 say Hello To The World</h1>
<?php get_footer(); ?>
"

footer="<?php wp_footer(); ?>
</body>
</html>"

header='<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
  <meta charset="<?php bloginfo('charset'); ?>">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
<?php wp_body_open(); ?>'

createTheme(){
  cd $dossierLocal/$projectname/wp-content/themes
  pwd
  mkdir $themeName
  cd $themeName
  echo "Creation du thème $themeName"
  touch style.css index.php header.php footer.php functions.php
  mkdir img js css
  echo $styleCSS >> style.css
  echo $index >> index.php
  echo $header >> header.php
  echo $footer >> footer.php
  echo $functionsPHP >> functions.php
  wp theme activate $themeName
  cd ../
  rm -rf twentynineteen twentyseventeen twentytwenty
}
