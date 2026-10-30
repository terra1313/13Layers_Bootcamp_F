# F02 — Rapport des travaux pratiques Linux

**Étudiant :** DONGMO FONKEU ALIDA DUCHELLE
**Environnement Linux / version :** Ubuntu 26.04

Reportez les commandes exécutées **et leurs sorties utiles**. Répondez aux questions figurant à la fin de chaque TP dans `02_TRAVAUX_PRATIQUES.md`.

## TP1 — Navigation et arborescence
**Commandes :**
```bash
mkdir -p ~/13layers-f02/{projets,logs,scripts}
pwd
ls -la
```
**Résultats respectifs :**
logs  projets  scripts

/home/alida/13layers-f02

total 20
drwxr-xr-x  5 root  root  4096 Oct 30 01:13 .
drwxr-x--- 17 alida alida 4096 Oct 30 01:13 ..
drwxr-xr-x  2 root  root  4096 Oct 30 01:13 logs
drwxr-xr-x  2 root  root  4096 Oct 30 01:13 projets
drwxr-xr-x  2 root  root  4096 Oct 30 01:13 scripts

**Questions / explication :**
`A quoi servent les commandes ?`
`pwd`: Savoir le chemin dans lequel je suis en train de travailler.
`ls -la`: lister de façon détaillé le contenu d'un repertoire en précisant les droits de chaque sous-dossiers ou fichiers (meme des fichiers caches).
`mkdir -p`: Permet de créer un repertoire et en meme temps les sous-dossiers dans celui-ci.

**Difference entre Chemin absolu et chemin relatif**
*Un chemin absolu:* permet de donner l'emplacement d'un fichier ou dossier depuis la racine.
*Un chemin relatif:* permet de donner l'emplacement d'un fichier ou dossier depuis le repertoire courant.

## TP2 — Fichiers
**Commandes :**
```bash
cat > projets/notes.txt
 Hello Everyone
 My name is DONGMO Alida
 l am training to manipulate Bash Liinux

cp projets/notes.txt logs/
mv logs/notes.txt logs/notes-archives.txt
cat logs/notes-archives.txt
```
**Résultats :**
**Questions / explication :**
`A quoi servent les commandes`
`cp`: copy, sert à copier un fichier d'un repertoire et le coller dans un autre
`mv`: move, elle aide à déplacer ou renommer un fichier d'un repertoire à un autre 

Pour verifier que l'original existe toujours, afficher le contenu du dossier original (projets) en entrant la commande *ls -l projets/notes.txt*  

## TP3 — Recherche et redirections
**Commandes :**
```bash
nano app.log
grep ERROR app.log
grep ERROR app.log | wc -l
echo "WARNING" > test.txt
 ls
 cat test.txt
echo "ATTENTION" >> test.txt
 cat test.txt
```
**Résultats :**
  ERROR
  ERROR
  2
  app.log  notes-archives.txt  test.txt
  WARNING
  WARNING
  ATTENTION

**Questions / explication :**
*Le pipe* `|` permet d'attribuer le resultat d'une commande précédente à une commande suivante
`>` : permet d'afficher du texte dans un fichier en supprimant le contenu precedent
`>>` : permet d'afficher en plus du texte precedent dans le fichier un autre texte

## TP4 — Permissions
**Commandes :**
```bash
cat > scripts/demo.sh
ls -l scripts/demo.sh
chmod u+x scripts/demo.sh
 ls -l scripts/demo.sh
```
**Résultats :**

Bonjour 13Layers
-rw-r--r-- 1 root root 17 Oct 30 17:41 scripts/demo.sh
-rwxr--r-- 1 root root 17 Oct 30 17:41 scripts/demo.sh

**Questions / explication :**
`rwx`: Il s'agit du systeme de privilege utilise dans Linux *r= read= Lecture* *w= write= Ecriture* *x= execute= Executer*
`chmod 777`: il faut savoir que ces droits rwx r-- r-- représentent Propriétaire ou Utilisateur, Groupe, autres. Linux utilise une representation numérique des permissions tels que rwx= 4+2+1 =7; rw-= 4+2= 6; r--= 4. Donc modifier les droits d'un fichier en 777 signifierait attribuer des droits a tous les utilisateurs, groupes... Cela est un risque de sécurité.

## TP5 — Diagnostic
**Commandes :**
```bash
whoami
uname -r
df -h
free -h
ps aux | head
```
**Résultats :**
`whoami`: Identifier l'utilisateur connecte
`uname -r: Donne la version du noyau Linux
`df -h`: Examiner l'espace disque
`free -h`: Analyser l'espace RAM
`ps aux | head`: Examiner les processus

**Questions / explication :** 
 Pour examiner le disque , entrer la commande `df-h` pour savoir la taille totale, l'espace utilise et l'espace disponible.
 Pour examiner la memoire, entrer la commande  `free -h` pour connaitre la memoire RAM totale utilisée et disponible et la memoire swap.
 pour examiner les processus, entrer la commande `ps aux | head` pour afficher les processus en cours

## TP6 — Script Bash
Script fourni : `scripts/system_info.sh`
**Commandes de test :** 
```bash
nano scripts/system_info.sh
chmod u+x scripts/system_info.sh
./scripts/system_info.sh
```
Résultats respectifs:
#!/usr/bin/env bash
set -euo pipefail

echo "Date: $ (date)"

echo "Utilisateur : $(whoami)"

echo "Repertoire courant : $(pwd)"

echo "Version du noyau : $(uname -r)"

echo "Espace disque :"
df -h
ls -l scripts/system_info.sh
  -rwxr--r-- 1 root root 200 Oct 30 18:37 scripts/system_info.sh

Date: ven. 30 oct 2026 18:52:00 WAT
Utilisateur : root
Repertoire courant : /home/alida/13layers-f02
Version du noyau : 7.0.0-38-generic
Espace disque :
Sys. de fichiers Taille Utilisé Dispo Uti% Monté sur
tmpfs              671M    3,1M  668M   1% /run
/dev/sda2           20G     17G  2,1G  89% /
tmpfs              1,7G       0  1,7G   0% /dev/shm
none               1,0M       0  1,0M   0% /run/credentials/systemd-journald.service
none               1,0M       0  1,0M   0% /run/credentials/systemd-resolved.service
tmpfs              1,7G    8,0K  1,7G   1% /tmp
tmpfs              336M     84K  335M   1% /run/user/1000
/dev/sr0           110M    110M     0 100% /run/media/alida/CDROM


**Questions / explication :**
On ajoute le shebang #!/usr/bin/env bash pour indiquer au systeme quel interpréteur utiliser pour executer le script, dans notre cas il precise que le script doit être interprété par le bash.
L'automatisation permet de réaliser automatiquement des taches répétitives grace a des scripts sans devoir intervenir manuellement.
