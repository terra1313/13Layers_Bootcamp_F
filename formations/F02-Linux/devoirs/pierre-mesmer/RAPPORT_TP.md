# F02 — Rapport des travaux pratiques Linux

**Étudiant :*MOUKOURY MOTTO PIERRE MESMER* 
**Environnement Linux / version :*UBUNTU-24.04.03* 

Reportez les commandes exécutées **et leurs sorties utiles**. Répondez aux questions figurant à la fin de chaque TP dans `02_TRAVAUX_PRATIQUES.md`.

## TP1 — Navigation
Commandes :
```bash
~
$ mkdir 13Layers-f02
$ cd 13layers-f02

~/13layers-f02
$ mkdir -p projets logs scripts
$ pwd
$ ls -la

```
**Résultats** :
- de la commande `pwd` : /c/Users/pierr/13layers-f02
- de la commande `ls -la` : 
total 28
drwxr-xr-x 1 pierr 197612 0 Oct 27 16:11 ./
drwxr-xr-x 1 pierr 197612 0 Oct 27 16:10 ../
drwxr-xr-x 1 pierr 197612 0 Oct 27 16:11 logs/
drwxr-xr-x 1 pierr 197612 0 Oct 27 16:11 projets/
drwxr-xr-x 1 pierr 197612 0 Oct 27 16:11 scripts/

**Questions / explication** : `pwd` affiche le chemin courant, `ls -la` affiche la liste des fichiers, `mkdir -p` crée plusieurs répertoires.
Un chemin absolu part toujours de la racine `/` tandis qu'un chemin relatif part de l'endroit ou nous sommes. 
**Exemple** : chemin absolu : `/home/13Layers/scripts.sh` chemin relatif : `13Layers/scripts` étant au préalable dans `home`

## TP2 — Fichiers
Commandes :
```bash
    ~/13layers-f02/projets
    $ touch notes.txt
    $ cd ..
    $ cp projets/notes.txt logs/
    $ cd logs
    $ mv notes.txt notes-archiche.txt
    $ cat notes-archiche.txt

    # TP2 — Fichiers (7 pts)
    Créez `projets/notes.txt` contenant trois lignes, copiez-le sous `logs/`, renommez la copie en `notes-archive.txt` et affichez-la. **Questions :** quelle différence entre `cp` et `mv` ? Comment vérifier que l'original existe toujours ?             
```
**Résultats** :
`projets/notes.txt` et `logs/notes-archiche.txt`. les deux fichiers ont le meme contenu mais des noms différents.
pour la commande cat `note-archiche.txt` le résultat est :
    << # TP2 — Fichiers (7 pts)
Créez `projets/notes.txt` contenant trois lignes, copiez-le sous `logs/`, renommez la copie en `notes-archive.txt` et affichez-la. **Questions :** quelle différence entre `cp` et `mv` ? Comment vérifier que l'original existe toujours ? >>

**Questions / explication** : `cp` commande utilisée pour copier un fichier d'un répertoire dans un autre. `mv` commande qui permet de renommer un fichier.
Pour vérifier si le fichier original existe il faut utiliser la commande `ls -l` dans le répertoire `projets`.

## TP3 — Recherche et redirections
Commandes :
```bash
    ~/13layers-f02/logs
    $ touch app.log
    $ printf "ERROR:échec de la tentative de connexion !!!
    INFO:tous les serveurs ont démarrés.
    ERROR:Délai d’attente de la demande dépassé.
    INFO:connexion établie.
    WARN:espace du disque faible."

    $ cat app.log | grep 'ERROR'
    $ grep 'ERROR' app.log | wc -l
    $ écho "Impossible de joindre l’hôte de destination." > test.txt
    $ écho "Nous pouvons joindre l’hôte de destination." >> test.txt
    $ cat test.txt

```
**Résultats** :

ERROR:échec de la tentative de connexion !!!
ERROR:Délai d’attente de la demande dépassé.
2
Impossible de joindre l’hôte de destination.
Nous pouvons joindre l’hôte de destination.

**Questions / explication** : `grep 'ERROR' app.log` sélectionne les lignes contenant ERROR. `|` va transmettre le résultat de la première ligne commande  a la suivante.
`wc -l` compte les lignes reçues.
`>` crée un fichier s'il n'existe pas ou remplace son contenu s'il existe déjà
`>>` crée un fichier s'il n'existe pas ou ajoute du contenu a la fin s;il existe déjà.

## TP4 — Permissions
Commandes :
```bash
   ~/13layers-f02
    $ printf '#!/usr/bin/env bash\n "Bonjour 13Layers"\n' > scripts/demo.sh
    $ ls -l scripts/demo.sh
    $ chmod u+x scripts/demo.sh
    $ ls -l scripts/demo.sh
    $ ./scripts/demo.sh
```
**Résultats** :
-rwxr-xr-x 1 pierr 197612 40 Oct 27 22:18 scripts/demo.sh*
-rwxr-xr-x 1 pierr 197612 40 Oct 27 22:18 scripts/demo.sh*
 Bonjour 13Layers

**Questions / explication** : `rwx` sont les droits de lecture, d’écriture et d'execution pour un fichier , un répertoire.
`chmod 777` n'est pas recommandé car il accorde les droits `rwx` au propriétaire, au groupe et aux autres ce qui ne garanti pas la sécurité.

## TP5 — Diagnostic
Commandes :
```bash
    whoami
    uname -r
    df -h
    free -h
    ps aux | head

```
**Résultats** :
pierr  
3.5.7-463ebcdc.x86_64

**Questions / explication** :  `whoami` affiche le nom de l'utilisateur , `uname -r` affiche la version du noyau actuellement exécuté, `df -h` affiche l'espace total,utilisé, disponible  du disque. `free -h` affiche les informations de la mémoire RAM. `ps aux | head` affiche des informations sur les processus en cours.

comment examiner le disque, la mémoire et les processus :
- le disque : `df -h`
- la mémoire : `free -h`
- les processus : `ps aux`

## TP6 — Script Bash
Script fourni : `scripts/system_info.sh`
Commandes de test :
```bash
    $ chmod u+x scripts/system_info.sh
    $ ./scripts/system_info.sh
```
**Résultats** :

INFORMATIONS DU SYSTÈME
Date et heure actuelle :
Wed Oct 28 00:18:31     2026
Utilisateur courant :
pierr
Le répertoire courant :
/c/Users/pierr/13layers-f02
La version du noyau
3.5.7-463ebcdc.x86_64
Détaille du disque
Filesystem            Size  Used Avail Use% Mounted on
C:/Program Files/Git  419G  361G   59G  87% /
E:                    522M  440M   82M  85% /e
K:                     47G  155M   47G   1% /k
FIN DU RAPPORT

**Questions / explication** : ls shebang précise
quel interpréteur doit exécuter le script lorsqu'on le lance.
L'automatisation permet de répéter les mêmes operations avec moins d'intervention manuelles comme la sauvegarde, le déploiement, les tests, la surveillance... 