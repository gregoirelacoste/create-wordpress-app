#create-wordpress-app
bash script to generate a wordpress website

####What does it do ?
* Download and Install wordpress in FRENCH
* Create default user
* Create database and user database
* Install WP CLI
* Install and activate plugins you choose
* Install a template boilerplate
* create lv1_index.php (root file to list all your wordpress)

You only have one file to check : 
##config/variables.sh 
```
#Local Config
projectname= Name of your project (db, user and theme also)
dossierLocal=Local directory for your wp
serveur=localhost
port=7777 (by default)
navigateur=firefox
BINCLIPATH=Determine where you want to install CLI WP (in your executable bash folder : example /home/$USER/bin)

#DB config
dbname=wpdb_$projectname
userDBname=user_$projectname

#WP site config
wpUserName=$userDBname
wpUserPass="pass"
wpUserEmail=g@lv1.fr
blog_public=0

#Plugins
Place your plugin to install and activate, name of plugin separate by space
plugins=(wordpress-seo contact-form-7)

#Theme
We create an empty theme, these is the data for style.css
URI="https://lv1.fr"
descriptionTheme="Theme par lv1"
themeName=$projectname"_theme"
```

## DEPENDENCIES
###JQ
Download jq

jq is written in C and has no runtime dependencies, so it should be possible to build it for nearly any platform. Prebuilt binaries are available for Linux, OS X and Windows.

- jq 1.5 is in the official Debian and Ubuntu repositories. Install using ```sudo apt-get install jq```.
- jq 1.5 is in the official Fedora repository. Install using ```sudo dnf install jq```.
- jq 1.4 is in the official openSUSE repository. Install using ```sudo zypper install jq```.
- jq 1.5 is in the official Arch repository. Install using ```sudo pacman -Sy jq```.


Any question or suggestion ? g@lv1.fr
####g@lv1.fr
