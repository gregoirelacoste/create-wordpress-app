CWAPPACF=$CWAPPINSTALL/acf
source $CWAPPACF/createDir.sh
source $CWAPPACF/createPageLoop.sh

createPages(){
  countpages=`conf 'wordpress.pages | length'`
  #create acf dir and add [ or nothing
  createDir
  #loop to create pages
  createPageLoop
}
