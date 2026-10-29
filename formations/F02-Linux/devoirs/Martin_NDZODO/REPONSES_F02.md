1. 
Linux est un système dont le noyau permet à l'ordinateur de fonctionner et de gérer ses ressources. Il gère notamment la mémoire, le processeur, les fichiers et les périphériques.

Il faut distinguer trois notions :
- Le noyau Linux : c'est la partie centrale du système. Il permet aux logiciels d'utiliser les ressources de l'ordinateur.
- Une distribution Linux : c'est un ensemble comprenant le noyau Linux, des logiciels et des outils pour utiliser l'ordinateur. comme ubuntu par exemple.
- Le terminal : c'est un programme qui permet de donner des commandes à l'ordinateur en écrivant du texte.

2.

/ : C'est la racine. Tous les répertoires du système se trouvent directement ou indirectement sous cette racine

/home: Contient les répertoires personnels des utilisateurs normaux.

/etc: Contient principalement les fichiers de configuration du système et des logiciels.

/var/log: Contient les journaux qui enregistrent des événements du système et des logiciels.

/tmp: Contient des fichiers temporaires utilisés pendant certaines opérations.

3.

pwd: Affiche le chemin du répertoire dans lequel on se trouve.

ls -la: Affiche les fichiers et répertoires, y compris les fichiers cachés, avec des informations détaillées.

cd .. : Permet de revenir au répertoire parent, c'est-à-dire au répertoire qui contient celui dans lequel on se trouve.

cd ~ : Permet de revenir au répertoire personnel de l'utilisateur.

- Exemples:

a) pwd peut donner un resultat comme: /home/martin/Documents/Linux
b) ls -la 
c) cd .. peut donner un resultat comme: /home/martin/Documents si par exemple on n'était au préalable dans /home/martin/Documents/Linux
d) cd ~ peut donner un resultat comme : /home/martin

4.

touch : Crée un fichier vide s'il n'existe pas. S'il existe, met généralement à jour ses dates d'accès ou de modification.

mkdir -p : Crée un répertoire et, si nécessaire, ses répertoires parents.

cp : Copie un fichier ou un répertoire.

mv : Déplace un fichier ou un répertoire, ou change son nom.

rm : Supprime des fichiers.

- comme précaution à prendre avec rm, Il faut vérifier le nom du fichier et le chemin avant de lancer la commande.

5. 

cat : Affiche le contenu du fichier.

less : Permet de consulter le fichier progressivement et de se déplacer dans son contenu.

head : Affiche les 10 premières lignes par défaut.

tail : Affiche les 10 dernières lignes.

6.

grep : permet de rechercher un mot ou un texte dans un fichier.

| : Le pipe permet d'envoyer le résultat d'une commande vers une autre commande.

> : Le symbole > permet d'envoyer le résultat d'une commande vers un fichier en remplaçant son contenu s'il existe déjà.
>> : Le symbole >> permet d'ajouter le résultat à la fin d'un fichier sans supprimer son contenu précédent.

commande qui compte les lignes contenant ERROR dans un fichier: grep -c "ERROR" application.log

7. 

a)
Sous Linux, les permissions déterminent les opérations qu'un utilisateur peut effectuer sur un fichier ou un répertoire.

r : Lire le contenu.
w : Modifier le contenu.
x : Exécuter le fichier s'il s'agit d'un programme ou d'un script compatible.

b) le propriétaire et le groupe

Un fichier possède notamment :
- Un propriétaire : l'utilisateur auquel le fichier appartient.
- Un groupe : le groupe associé au fichier.
Les permissions peuvent être définies séparément pour le propriétaire, le groupe et les autres utilisateurs.

Par exemple, si tu crées un script, tu peux autoriser son propriétaire à le modifier tout en limitant les droits des autres utilisateurs.

c) 
la commande chmod u+x script.sh permet de donner les droits d'exécutions au propriétaire les droit d'exécution sur le fichier script.sh

d) pour éviter chmod 777

la commande chmod permet de donner tous les droits sur un fichier. il faut l'éviter car tout les utilisateurs ne doivent jamais avoir tous les droits sur un fichier

8. 

la différence est que l'utilisateur normal C'est un compte utilisé pour les tâches quotidiennes : écrire des documents, programmer, naviguer sur Internet ou exécuter des applications.

Ses permissions sont limitées afin de protéger le système, l'utilisateur root est le compte administrateur principal de Linux. Il possède des droits très étendus sur le système. Il peut notamment modifier des fichiers système, installer des logiciels et gérer les utilisateurs, la commande sudo permet à un utilisateur autorisé d'exécuter une commande avec des privilèges élevés, généralement ceux de root

- pourquoi appliquer le principe du moindre privilège

Le principe du moindre privilège consiste à donner à chaque utilisateur uniquement les droits nécessaires pour effectuer son travail. donc Utiliser les privilèges administrateur uniquement lorsque c'est nécessaire permet de réduire les risques d'erreurs et de problèmes de sécurité.

9. 

ps aux: Affiche une liste des processus en cours d'exécution, avec des informations comme l'utilisateur, le PID et l'utilisation des ressources.

top : Affiche les processus et permet d'observer en temps réel leur consommation de ressources.

df -h : Affiche l'espace disque utilisé et disponible sur les systèmes de fichiers montés, dans un format lisible généralement en pourcentage.

free -h : Affiche des informations sur la mémoire RAM et la mémoire swap.

uname -r: Affiche la version du noyau Linux en cours d'exécution.

10. 

a) Un script Bash est un fichier qui contient plusieurs commandes exécutées automatiquement dans l'ordre prévu par le script.

b) le shebang #!/usr/bin/env bash est une ligne entête d'un script bash  indique au système qu'il doit utiliser Bash pour interpréter le script lorsqu'il est lancé directement comme un programme.

c) - sauvegarde des fichiers
   - déployer une application
