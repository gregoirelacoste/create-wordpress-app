<?php
register_nav_menus( array(
'main' => 'Menu Principal',
'footer' => 'Bas de page',
) );

add_filter( 'wp_nav_menu_items','add_link_to_main_menu', 10, 2 );
function add_link_to_main_menu( $items, $args ) {
  if( $args->theme_location == 'main' )  {
    if(is_user_logged_in()) :
      $items .=  '<li><a href="'.wp_logout_url().'">Deconnexion '.wp_get_current_user()->user_nicename.'</a> </li>';
    else:
      $items .=  "<li><a href='". wp_login_url()."'>S'identifier</a></li>";
    endif;
  }
  return $items;
}
