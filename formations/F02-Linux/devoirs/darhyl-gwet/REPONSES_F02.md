``Question 1 — Qu'est-ce que Linux ? Quelle est la différence entre un noyau Linux, une distribution (ex. Ubuntu) et un terminal ?``
Linux est un système d'exploitation open source qui permet à l'utilisateur d'interagir avec le systeme.
un noyau est la partie centrale du système qui fait le lien entre le matériel et le logiciel tandis qu'une distribution est un système complet construit autour du noyau.
un terminal est un logiciel qui permet d'interagir avec le système

``Question 2 - Système de fichiers — Expliquez les rôles de /, /home, /etc, /var/log et /tmp.``
/: point de départ d'un chemin
/home : dossier de l'utilisateur
/etc : pour les configurations
/var/log: pour les connexions
/temp : pour les fichiers temporaires

``Question 3 - Décrivez les commandes pwd, ls -la, cd ..et cd ~. Donnez un exemple.``
pwd: afficher le dossier ou l'on se trouve           ex: /dawson/projets/reseau
ls -la: liste les éléments d'un dossier
cd ..: retourne dans le dossier précédent            ex: /dawson/projet
cd ~: va dans un dossier personnel

``Question 4 - À quoi sert touch, mkdir -p, cp, mv et rm? Quelle précaution prendre avec rm?``
touch: créer un fichier
mkdir -p: créer un dossier
cp: copier un dossier
mv: déplacer un fichier
rm: supprimer un dossier
la précaution à prendre avec rm est de bien vérifier le dossier à supprimer car la suppréssion est définitive

``Qustion 5 - Comparez cat, less, head et tail -n 10. Quand les utiliser ?``
ce sont des commandes pour ouvrir un fichier
cat: pour afficher tout le fichier
less: pour la lecture par page
head: pour afficher l'en tete du fichier
tail -n 10: pour afficher les 10 dernières lignes

``Question 6 -Expliquez grep, le pipe |, les redirections >et >>. Donnez une commande qui compte les lignes contenant ERROR.``
grep motif fichier : cherche les lignes contenant un motif.
| (pipe) : envoie la sortie d’une commande comme entrée de la suivante, comme un tuyau.
>: redirige la sortie vers un fichier en l’écrasant.
>>: redirige la sortie en ajoutant à la fin du fichier.

``Question 7 - Expliquez r, w, x, le propriétaire et le groupe. Que fait-on chmod u+x script.sh? Pourquoi éviter chmod 777?``
r: autorisation de lecture
w: autorisation d'écriture
x: autorisation d'exécution d'un fichier
chmod u+x script.sh ajoute le droit d’exécution pour le propriétaire seulement
on évite chmod 777 pour éviter de donner l'autorisation à n'importe qui pour modifier ou supprimer un fichier

``Question 8 - Quelles différences entre utilisateur normal, root et sudo? Pourquoi appliquer le principe du moindre privilège ?``
un utilisateur normal a des droits limités à son espace, un utilisateurs root à tous les droits sur le système et un sudo a certains privilèges pour modifier le système
on applique le principe de moindre privilèges pour permèttre à chaque utilisateurs d'accéder uniquement aux ressources nécéssaires pour son poste.

``Question 9 - Expliquez les informations fournies par ps aux, top, df -h, free -h et uname -r.``
ps aux: liste les activités dans le système
top: montre ce qui se passe en temps réel
df -h: montre la gestion de l'espace dans le disque de chaque partition
free -h: montre l'état de la mémoire
uname -r: montre la version du noyau

``Question 10 - Qu'est-ce qu'un script Bash ? Expliquez le shebang #!/usr/bin/env bashet citez deux tâches DevOps automatisables.``
Un script Bash est un fichier texte contenant une suite de commandes exécutées automatiquement
Le shebang #!/usr/bin/env bash indique au système quel interpréteur utiliser.
Deux tâches DevOps automatisables : mise à jour des paquets, redémarrage de services