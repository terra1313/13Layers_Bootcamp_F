# F02 — Rapport des travaux pratiques Linux

**Étudiant :** `MEFOTIE KENGNE Hillary Lucere`
**Environnement Linux / version :** `ubuntu-24.04.01` 

Reportez les commandes exécutées **et leurs sorties utiles**. Répondez aux questions figurant à la fin de chaque TP dans `02_TRAVAUX_PRATIQUES.md`.

## TP1 — Navigation ##
**Commandes :**
```bash
$ cd 
$ mkdir 13Layers-f02 //creation du dosssier 13Layers-f02
$ cd 13layers-f02

~/13layers-f02
$ mkdir -p projets logs scripts
$ pwd
$ ls -la
```
**Résultats :**

- commande `pwd` : /c/Users/MAFOTIE/13Layers-f02
- commande `ls -la` : 
total 20
drwxr-xr-x 1 MAFOTIE 197121 0 Nov  2 05:44 ./
drwxr-xr-x 1 MAFOTIE 197121 0 Nov  2 05:43 ../
drwxr-xr-x 1 MAFOTIE 197121 0 Nov  2 05:44 logs/
drwxr-xr-x 1 MAFOTIE 197121 0 Nov  2 05:44 projets/
drwxr-xr-x 1 MAFOTIE 197121 0 Nov  2 05:44 scripts/

**Questions / explication** :
-   pwd (Print Working Directory) : affiche le chemin du dossier dans lequel on se trouve.
-   ls -la : affiche tous les fichiers et dossiers, y compris les fichiers cachés, avec leurs informations détaillées.
-   mkdir -p : crée un dossier et ses sous-dossiers parents si nécessaire.
-   Un chemin absolu commence à la racine / et indique l'emplacement complet tandis qu'un chemin relatif indique l'emplacement à partir du dossier courant.

## TP2 — Fichiers ##

Commandes :
```bash
 cd ~/13layers-f02

    # Créez `projets/notes.txt` contenant trois lignes
    echo "Ligne 1 : Configuration serveur" > projets/notes.txt
    echo "Ligne 2 : Configuration appli" >> projets/notes.txt
    echo "Ligne 3 : Configuration simple" >> projets/notes.txt

    # Copie dans logs/
    cp projets/notes.txt logs/

    # Renommage de la copie en notes-archive.txt
    mv logs/notes.txt logs/notes-archive.txt

    # Affichage du contenu
    cat logs/notes-archive.txt
    
```
**Résultats :**
    $ cat logs/notes-archive.txt
    Ligne 1 : Configuration serveur
    Ligne 1 : Configuration appli
    Ligne 3 : Configuration simple

**Questions / explication :**
-   différence entre `cp` et `mv` : 
    * cp copie un fichier ou un dossier. L'original reste à son emplacement.
    * mv déplace ou renomme un fichier ou un dossier. Lorsqu'il déplace un fichier, celui-ci quitte son emplacement initial.
-   Comment vérifier que l'original existe toujours :
on utilise la commande : `ls -l projets/notes.txt`


## TP3 — Recherche et redirections ##

**Commandes :** et **Résultats :**
```bash
# creer le fichier `logs/app.log`
cd ~/13layers-f02
cat > logs/app.log <<'EOF'
2026-11-02 ERROR : erreur de connexion
2026-11-02 INFO : application démarrée
2026-11-02 WARN : espace disque faible
2026-11-02 ERROR : échec de sauvegarde
2026-11-02 INFO : utilisateur connecté
EOF

#afficher les lignes contenant `ERROR`
grep "ERROR" logs/app.log
2026-11-02 ERROR : erreur de connexion
2026-11-02 ERROR : échec de sauvegarde

# compter ces lignes avec `| wc -l`
$ grep "ERROR" logs/app.log | wc -l
2

# expérimentez `>` et `>>`
$ echo "Premier test" > logs/test.txt

$ echo "Deuxième test" > logs/test.txt

$ cat logs/test.txt
Deuxième test

$ echo "Troisième test" >> logs/test.txt

$ cat logs/test.txt
Deuxième test
Troisième test

```
**Questions / explication :**
* Le pipe permet de transmettre le résultat d'une commande comme entrée à une autre commande.
* > écrit dans un fichier en remplaçant son ancien contenu.
* >> ajoute du contenu à la fin du fichier sans effacer ce qui existe déjà.


## TP4 — Permissions ##

**Commandes :** et **Résultats :**
```bash
# Créer le fichier demo.sh
cd ~/13layers-f02
touch scripts/demo.sh

# Écrire le contenu du script
cat > scripts/demo.sh <<'EOF'
#!/usr/bin/env bash

echo "Bonjour 13Layers"
EOF

# Afficher les droits avant modification
ls -l scripts/demo.sh
-rwxr-xr-x 1 MAFOTIE 197121 45 Nov  2 06:59 scripts/demo.sh*

# Ajouter le droit d'exécution
chmod u+x scripts/demo.sh

# Afficher les droits apres modification
ls -l scripts/demo.sh
-rwxr-xr-x 1 MAFOTIE 197121 45 Nov  2 06:59 scripts/demo.sh*

# execution du script
./scripts/demo.sh
Bonjour 13Layers
```

**Questions / explication :**
* r (read) : autorisation de lire le fichier.
* w (write) : autorisation de modifier le fichier.
* x (execute) : autorisation d'exécuter le fichier.
* Pourquoi chmod 777 n'est pas recommandé car il donne tous les droits à tout le monde : lecture, écriture et exécution.Cela représente un risque de sécurité parce que n'importe quel utilisateur peut modifier ou exécuter le fichier.


## TP5 — Diagnostic ##

**Commandes :** et **Résultats :**
```bash
# execution des commandes 
$ whoami
MAFOTIE

$ uname -r
3.6.10-5a1665c8.x86_64

$ df -h
Filesystem            Size  Used Avail Use% Mounted on
C:/Program Files/Git  119G  105G   14G  89% /

$ ps aux | head
      PID    PPID    PGID     WINPID   TTY         UID    STIME COMMAND
     3320    1536    3320      27216  pty0      197609 07:17:31 /usr/bin/ps
     1536    1535    1536      18052  pty0      197609   Oct 19 /usr/bin/bash
     1535       1    1535      21996  ?         197609   Oct 19 /usr/bin/mintty
     3321    1536    3320      13736  pty0      197609 07:17:31 /usr/bin/head


```

**Questions / explication / interpretation :**
comment examiner le disque, la memoire et le processus:
  * `whoami`  : afficher le nom d'utilisateur, confirme le nom du compte utilisateur actuellement actif exécutant la session.
  * `uname -r`  : affiche la version du noyau actuellement exécuté.
  * `df -h`  : Montre la capacité, l'espace utilisé et l'espace disponible sur chaque partition disque montée.
  * `free -h`  : Donne l'état de la mémoire physique (RAM) et du SWAP (utilisée, libre, mise en cache).
  * `ps aux | head`  : affiche les processus système avec leur PID, consommation CPU/RAM et la commande qui les a lancés.


## TP6 — Script Bash ##
Créez `scripts/system_info.sh` avec `#!/usr/bin/env bash` et `set -euo pipefail`. Il affiche date, utilisateur, répertoire courant, version du noyau et espace disque. Rendez-le exécutable puis testez-le. **Questions :** pourquoi ajouter le shebang ? Qu'est-ce que l'automatisation apporte en DevOps ?

Script fourni : `scripts/system_info.sh`
**Commandes de test :**
```bash
# Créer le fichier
cd ~/13layers-f02
touch scripts/system_info.sh

# Écrire le contenu du script
cat > scripts/system_info.sh <<'EOF'
#!/usr/bin/env bash
set -euo pipefail

echo " INFORMATIONS SYSTÈME "

echo "Date :"
date

echo "Utilisateur connecté :"
whoami

echo "Répertoire courant :"
pwd

echo "Version du noyau Linux :"
uname -r

echo "Espace disque :"
df -h

echo " FIN DU RAPPORT "
EOF

# rendre le script executable
chmod u+x scripts/system_info.sh

#Vérifier les permissions
ls -l scripts/system_info.sh
-rwxr-xr-x 1 MAFOTIE 197121 260 Nov  2 07:35 scripts/system_info.sh*

# executer le script
./scripts/system_info.sh
```

**Résultats :**
 INFORMATIONS SYSTÈME
Date :
Mon Nov  2 07:36:01     2026
Utilisateur connecté :
MAFOTIE
Répertoire courant :
/c/Users/MAFOTIE/13Layers-f02
Version du noyau Linux :
3.6.10-5a1665c8.x86_64
Espace disque :
Filesystem            Size  Used Avail Use% Mounted on
C:/Program Files/Git  119G  105G   14G  89% /
 FIN DU RAPPORT

**Questions / explication :**
* On ajouter le shebang `#!/usr/bin/env bash` pour indiquer au système quel interpréteur utiliser pour exécuter le script.
* En DevOps, l'automatisation permet de faire exécuter des tâches répétitives par des scripts ou des outils, sans devoir les réaliser manuellement à chaque fois.
