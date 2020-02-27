<?php
function lv1_change_media_label(){
$menu[2][0] = "Accueil WP by CWAPP";
}
add_action( 'admin_menu', 'lv1_change_media_label' );
