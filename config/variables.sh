#!/bin/zsh
#Local Config
projectname=$1
dossierLocal=/home/$USER/dev/lamp
serveur=localhost
port=7777
navigateur=firefox
BINCLIPATH=/home/$USER/bin
#DB config
dbname=wpdb_$projectname
userDBname=user_$projectname
#WP site config
wpUserName=$userDBname
wpUserPass="pass"
wpUserEmail=g@lv1.fr
blog_public=0
#Plugins
plugins=(wordpress-seo contact-form-7)
#Theme
URI="https://lv1.fr"
descriptionTheme="Theme par lv1"
themeName=$projectname"_theme"
