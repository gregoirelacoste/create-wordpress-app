databaseCreate(){
    sudo mysql -e "CREATE DATABASE $dbname /*\!40100 DEFAULT CHARACTER SET utf8 */;"
    sudo mysql -e "CREATE USER $userDBname@$serveur IDENTIFIED BY '$wpUserPass';"
    sudo mysql -e "GRANT ALL PRIVILEGES ON $dbname.* TO '$userDBname'@'$serveur';"
    sudo mysql -e "FLUSH PRIVILEGES;"
    cp wp-config-sample.php wp-config.php
    sed -i "s/votre_nom_de_bdd/$dbname/g ; s/votre_utilisateur_de_bdd/$userDBname/g ; s/votre_mdp_de_bdd/pass/g" $dossierLocal/$projectname/wp-config.php
}
