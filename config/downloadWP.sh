downloadWP(){
    cd $dossierLocal
    pwd
    echo "Téléchargement de WP et décompression"
    wget https://fr.wordpress.org/latest-fr_FR.zip
    unzip latest-fr_FR.zip
    mv wordpress $projectname
    echo "Suppression du zip"
    rm latest-fr_FR.zip
    cd $dossierLocal/$projectname
    pwd
}