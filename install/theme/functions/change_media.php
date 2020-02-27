<?php
function lv1_change_media_label(){
global $menu, $submenu;
$menu[10][0] = 'Photos/Videos';
$submenu['upload.php'][5][0] = 'All Photos/Videos';
$submenu['upload.php'][10][0] = 'Upload new';
$menu[2][0] = "Accueil LV1";
}
add_action( 'admin_menu', 'lv1_change_media_label' );
