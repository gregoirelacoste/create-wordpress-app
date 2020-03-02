# create-wordpress-app
bash script to generate a wordpress website

#### What does it do ?
* Download and Install wordpress in language you want
* Create default user and pass and config...
* Create database and user database
* Install WP CLI
* Use WP CLI server
* Install and activate plugins you choose
* Install a template boilerplate
* Generate Advanced Custom fields for template you choose (soon)
* Install ACF cli with auto import JSON ACF

### How it work ? 
- first install CLI in your $PATH
- go in your project folder
- ```cwapp init [projectname]``` to generate a config file for your project
- when config file is ok run ```cwapp install```, lets the magic happend...
- start server ```cwapp start```
- help ```cwap -h```

## DEPENDENCIES
### JQ
You have to download jq (json utilities for bash)

jq is written in C and has no runtime dependencies, so it should be possible to build it for nearly any platform. Prebuilt binaries are available for Linux, OS X and Windows.

- jq 1.5 is in the official Debian and Ubuntu repositories. Install using ```sudo apt-get install jq```.
- jq 1.5 is in the official Fedora repository. Install using ```sudo dnf install jq```.
- jq 1.4 is in the official openSUSE repository. Install using ```sudo zypper install jq```.
- jq 1.5 is in the official Arch repository. Install using ```sudo pacman -Sy jq```.


Any question or suggestion ? g@lv1.fr
#### g@lv1.fr
