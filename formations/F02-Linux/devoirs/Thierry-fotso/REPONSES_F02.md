# F02 — Réponses au questionnaire Linux

**Étudiant :THIERRY-FOTSO** 
**GitHub :Pagnus406** 
**Branche :** `Bootcamp_F02__THIERRY_FOTSO`
.

## Question 1 — Linux
Réponse : Linux est un systeme d'exploitation communautaire, qui permet a son utilisateur de prendre pleinement le controle de son ordinateur.

la difference est que le noyau est comme le coeur du systeme , ce qui permet au  SE de faire son travail tandis qu'une distribution c'est un ensemble de packages construits sur le noyau et qui repondent a des besoins specifiques. Le terminal quant'a lui est un programme qui permet a un humain de communiquer avec la machine

## Question 2 — Système de fichiers
`/` C'est la racine. Le point de depart de tous les fichiers

`/home` C'est ce qui contient les dossiers personnels pour les differents utilisateurs. un peu comme le dossier utilisateurs dans windows

`/etc` Contient les fichiers de configuration du systeme.et il n'est modifiable que par l'admin

 `/var/log` Contient les logs

 `/tmp`C'est le dossier pour les fichiers temporaires.je pense qu'il existe aussi sur windows
 
## Question 3 — Navigation
'pwd' affiche le chemin d'acces du repertoire dans lequel on se trouve
      exple: home/pagnus/documents

'ls -la' permet de lister le contenu d'un repertoire, meme les fichiers cachees
      exple: si on tape la commande ls -la en se placant dans documents,elle va lister tous les fichiers qui s'y trouvent.

'cd..' permet de revenir au repertoire precedent, celui qui contient celui dans lequel on se trouce
     exple: depuis home/pagnus on revient a /home apres avoir tape cd

'cd~' permet de remonter directement dans le dossier utilisateur
     exple:/home/pagnus

## Question 4 — Manipulation de fichiers
'touch' permet de creer un fichier vide ou d'actualiser sa date de modification s'il existe deja.

'mkdir' permet de creer un dossier et son dossier parent

'cp' permet de copier

'mv' permet de dplacer un fichier/dossier ou de le renommer

'rm' permet de supprimer 
comme precaution il faut bien verifier le nom du dossier avant de valider

## Question 5 — Lecture de fichiers
pour un fichier,
'cat' affiche son contenu. on l'utlise pour lire un petit fichier en vitesse

'less' permet de l'afficher progressivement, page par page. on l'utilise pour lire un fichier lourd sans tout afficher

'head' affiche les 10 premieres lignes par default. on l'utilise pour regarder les premieres lignes d'un fichier

'tail -n 10' affiche ses 10 dernieres lignes
## Question 6 — Recherche et redirections
'grep' Est utilise pour rechercher un mot ou un groupe de mots dans un fichier.
'Le pipe "|"'  permet d'envoyer le résultat d'une commande vers une autre commande

'>'  permet d'envoyer le résultat d'une commande vers un fichier en remplaçant son contenu s'il existe déjà.
'>>'  permet d'ajouter le résultat à la fin d'un fichier sans supprimer son contenu précédent.

  exple de commande grep -c "ERROR" Template.txt

## Question 7 — Permissions
'r' : Lire le contenu.
'w' : Modifier le contenu.
'x' : Exécuter le fichier s'il s'agit d'un programme ou d'un script qui est compatible.
Chaque fichier possede un proprio et un groupe. Le proprietaire est celui a qui appartient le fichier et qui dipose de toutes les permissions. alors que le groupe est un ensemble d'utilsateurs qui peuvent l'utiliser

'chmod u+x script.sh' permet d'ajouter le droit d'execution au proprietaire sur le fichier script.sh

IL faut eviter 'chmod 777' parcequ'elle permet de donner le droit a tout le monde de faire tout

## Question 8 — Utilisateurs
Un utilisateur normal possède des droits limités :

il Peut lire et modifier ses propres fichiers.
il ne peut pas modifier les fichiers système.
Il ne peut pas non plus installer de logiciels sans autorisation.

root est le superutilisateur
Il possède tous les droits sur le système :Lire, modifier ou supprimer n'importe quel fichier.
Créer ou supprimer des utilisateurs.
Installer ou désinstaller des logiciels.
Modifier le noyau et les services système.

sudo ( SuperUser DO) permet à un utilisateur normal d'exécuter ponctuellement une commande avec les privilèges de root.

Appliquer ce principe permet de faire plusieurs choses notemment:
 -Si un compte est compromis, l'attaquant dispose uniquement des droits de ce compte car acces limite
 -Un utilisateur normal ne peut pas supprimer ou modifier accidentellement des fichiers systèmes importants
 Moins un compte possède de privilèges, moins il peut être exploité pour causer des dégâts
## Question 9 — Surveillance système
'ps aux' Permet d'afficher une liste des processus en cours d'exécution, avec des informations comme l'utilisateur, le PID et l'utilisation des ressources.

'top' Affiche les processus en cours et permet d'observer en temps réel leur consommation de ressources.

'df -h' Affiche l'espace disque utilisé et celui  disponible sur les systèmes de fichiers montés.

'free -h' Affiche des informations sur la mémoire RAM et la mémoire swap.

'uname -r' Affiche la version du noyau Linux en cours d'exécution.


## Question 10 — Bash et DevOps
*Un script Bash est un fichier qui contient plusieurs commandes exécutées automatiquement dans l'ordre prévu par le script.

*'#!/usr/bin/env bash' indique à Linux d'exécuter le script avec Bash trouvé dans le PATH cite
