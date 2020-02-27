<?php

add_theme_support( 'post-thumbnails' );
add_theme_support( 'title-tag' );

function cwapp_add_assets(){
  wp_enqueue_script('menu_burger', get_template_directory_uri() .'/js/burger.js',array(), '1.0', true);
  wp_enqueue_style('burger', get_template_directory_uri() .'/css/burger.css',array(), '1.0', false);
  wp_enqueue_style('responsive', get_template_directory_uri() .'/css/responsive.css',array(), '1.0', false);
  wp_enqueue_style('mainstyle', get_template_directory_uri() .'/css/style.css',array(), '1.0', false);
}
add_action('wp_enqueue_scripts', 'cwapp_add_assets');

register_sidebar( array(
  'id' => 'blog-sidebar',
  'name' => 'Blog',
) );

require_once(get_template_directory() . "/functions/change_media.php");
require_once(get_template_directory() . "/functions/menus.php");
