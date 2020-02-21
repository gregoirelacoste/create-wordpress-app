#!/bin/zsh
#Local Config
projectname=$1
dossierLocal=/home/$USER/dev/lamp
serveur=localhost
port=7777
navigateur=firefox
#DB config
dbname=wpdb_$projectname
userDBname=user_$projectname
#WP site config
wpUserName=$userDBname
wpUserPass="pass"
wpUserEmail=g@lv1.fr
blog_public=0
#Plugins
plugins=(https://downloads.wordpress.org/plugin/wordpress-seo.13.1.zip https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip)
#Theme
URI="https://lv1.fr"
descriptionTheme="Theme par lv1"
themeName=$projectname"_theme"