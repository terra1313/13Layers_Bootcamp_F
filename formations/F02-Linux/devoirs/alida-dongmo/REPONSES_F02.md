# F02 — Réponses au questionnaire Linux

**Étudiant :** DONGMO FONKEU ALIDA DUCHELLE
**GitHub :** alidaduchelle
**Branche :** `Bootcamp_F02__prenom_nom`

Répondez aux 10 questions du fichier [01_CATALOGUE_QUESTIONS.md](../../01_CATALOGUE_QUESTIONS.md) **dans vos propres mots**.

## Question 1 — Linux

**Linux:**  est un systeme d'exploitation Open source descendant du systeme UNIX. 

La difference entre  noyau linux, distribution et terminal est que:
**Le noyau Linux:** est le cœur du systeme, gérant le processeur, la memoire, les processus et périphériques
**La distribution:** est un ensemble qui comprend le noyau linux, des logiciels et un systeme de gestion des paquets
**Le terminal:** Interface qui permet a l'utilisateur de communiquer avec le systeme en tapant des commandes

## Question 2 — Système de fichiers

**Expliquons les roles de ces repertoire**

`/`: C'est le repertoire racine du systeme. Tous les repertoires quittent de la
`/home`: Contient les dossiers personnels des utilisateurs
`/etc`: Contient les fichiers de configuration du système et des applications
`/var/log`: Contient les journaux (logs) du système et des applications
`/tmp`: Contient les fichiers temporaires

## Question 3 — Navigation dans Linux

**Décrivons ces commandes**
`pwd`: Affiche le chemin du repertoire courant
`ls -la`: Affiche tous les fichiers meme les fichiers cachés, avec leurs détails 
`cd ..`: Remonte au repertoire parent
`cd ~`: Retourne dans le répertoire personnel de l'utilisateur

**Exemples**
pwd
/home/alida/13layers-f02

ls -la
total 20
drwxr-xr-x  5 root  root  4096 Oct 30 01:13 .
drwxr-x--- 17 alida alida 4096 Oct 30 01:13 ..
drwxr-xr-x  2 root  root  4096 Oct 30 01:13 logs
drwxr-xr-x  2 root  root  4096 Oct 30 01:13 projets
drwxr-xr-x  2 root  root  4096 Oct 30 01:13 scripts

cd ..
root@Ubun26:/home/alida# 

cd ~
root@Ubun26:~# 

## Question 4 — Manipulation de fichiers

`touch`: Commande qui permet de créer un fichier vide s'il n'existe pas
`mkdir -p`: Créer un repertoire et ses parents si necessaire 
`cp`: Copier un fichier
`mv`: Déplacer ou Renommer un fichier
`rm`: Supprimer un fichier

La commande rm supprime les fichiers sans les placer dans la corbeille, verifier donc avant toute tentative.

## Question 5 — Lecture de fichiers

**Comparaison**

`cat`: Permet d'afficher le contenu d'un fichier. L'utiliser pour un petit fichier
`less`: Permet d'afficher le contenu d'un fichier page par page. Pour les fichiers volumineux
`head`: Permet d'afficher les 10 premieres lignes par défaut. Pour consulter le debut
`tail -n 10`: Permet d'afficher les 10 dernières lignes. Pour consulter la fin d'un fichier 

## Question 6 — Recherche et redirections
`grep`: Permet de chercher et d'afficher un mot dans un fichier. Exple: grep ERROR logs/app.log
le pipe `|`: Permet de transmettre le résultat d'une commande a une autre
La redirection `>` : Permet d'écrire dans un fichier en remplaçant le contenu existant
La redirection `>>`: Permet d'ajouter du contenu a la fin d'un fichier sans effacer l'ancien

*Commande qui compte les lignes contenant ERROR*
grep ERROR logs/app.log | wc -l

## Question 7 — Permissions
`r` : Read droit de lecture sur un fichier
`w`: Write droit d'écriture sur un fichier
`x`: Execute droit d'executer un fichier
`Le propriétaire`: C'est l'utilisateur qui possède le fichier 
`Le groupe`: Groupe d'utilisateurs associé au fichier 

La commande `chmod u+x script.sh` ajoute le droit d'execution au propriétaire du fichier

Il faut éviter d'entrer la commande `chmod 777` car elle permet d'attribuer tous les droits du fichier au propriétaire, groupe et autres utilisateurs.

## Question 8 — Utilisateurs

`utilisateur normal`: C'est un compte utilise avec les droits limites 
`root`: Compte administrateur disposant de privileges élevés sur le systeme
`sudo`: Commande permettant a un utilisateur autorisé d'executer une commande avec des privileges élevés

Il faut appliquer le principe du moindre privilege pour limiter les risques de mauvaise manipulation, protéger les fichiers et les ressources du systeme

## Question 9 — Surveillance système

`ps aux`: Lister les processus en cours d'exécution
`top`: Affiche les processus et surveille leur consommation de ressources en temps réel
`df -h`: Affiche l'espace disque total, utilisé et disponible
`free -h`: Affiche la mémoire RAM et la mémoire Swap
`uname -r`: Affiche la version du noyau Linux


## Question 10 — Bash et DevOps
**Un script bash** est un fichier qui contient une suite de commandes destinées a être exécutées automatiquement par l'interpréteur bash

`#!/usr/bin/env bash` c'est la premiere ligne d'un script, il indique au systeme quel interpréteur utiliser pour executer le script

Les deux taches DevOps automatisables peuvent etre:
 Deployer des applications
 Surveiller le reseau en collectant les informations des équipements.