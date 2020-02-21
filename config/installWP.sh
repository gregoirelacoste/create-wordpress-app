installWP(){
  curl --data "weblog_title=$projectname&user_name=$wpUserName&admin_password=$wpUserPass&admin_password2=$wpUserPass&pw_weak=on&admin_email=$wpUserEmail&blog_public=$blog_public&Submit=Installer+WordPress&language=" $serveur:$port/$projectname/wp-admin/install.php\?step\=2
}