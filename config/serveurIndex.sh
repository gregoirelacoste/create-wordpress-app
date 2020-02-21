#!/bin/zsh
HEADERFILE=$dossierLocal/lv1_header.php
INDEXFILE=$dossierLocal/lv1_index.php
nouveaulien="<li><a href='$projectname'>Wordpress $projectname</a></li>"

indexcontent="<html>
<head>
  <title>Home Serveur LV1</title>
</head>
<body>
<h1>LV1 Create Wordpress App</h1>
<p>Choisissez votre site dans la liste ci-dessous.</p>
<?php include ('lv1_header.php'); ?>
</body>
</html>
"
headercontent="<ul>$nouveaulien</ul>"

createLinkOrFile(){
	if [ -f "$HEADERFILE" ]
		then
		    echo "Ajout du lien dans $HEADERFILE"
		    sed -i "/<\/ul>/i\ $nouveaulien" $HEADERFILE
		else 
		    echo "Création de $HEADERFILE et $INDEXFILE"
		    touch $INDEXFILE
		    touch $HEADERFILE
		    echo $indexcontent >> $INDEXFILE
			echo $headercontent >> $HEADERFILE
	fi
}