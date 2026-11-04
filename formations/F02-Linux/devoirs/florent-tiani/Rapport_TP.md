# F02 — Rapport des travaux pratiques Linux
**Étudiant :** FLORENT TIANI 
**Environnement Linux / version :** Kali Linux

---

## TP1 – Navigation et arborescence

  ### Exécution des commandes et resultats
  ```bash

    # Création de l'arborescence
mkdir -p /13layers-f02/{projets,logs,scripts}

    

    # Navigation vers le dossier principal
    cd ~/13layers-f02

   

    # Affichage du chemin courant
pwd
   resultat :  /home/florent-tiani/Bureau/13layers-f02
    
```

    # Affichage de la liste détaillée
ls -la
    total 20
    drwxrwxr-x 5 florent-tiani florent-tiani 4096 Oct 29 13:57 .
    drwxr-xr-x 4 florent-tiani florent-tiani 4096 Oct 28 16:27 ..
    drwxrwxr-x 2 florent-tiani florent-tiani 4096 Oct 28 16:28 logs
    drwxrwxr-x 2 florent-tiani florent-tiani 4096 Oct 28 16:28 projets
    drwxrwxr-x 2 florent-tiani florent-tiani 4096 Oct 29 13:57 scripts



  ### Questions de réflexion
  À quoi servent `pwd`, `ls -la` et `mkdir -p` ?**
    * `pwd` : Affiche le chemin absolu du répertoire dans lequel on se trouve.
    * `ls -la` : Liste tous les fichiers et dossiers (y compris les fichiers cachés) avec leurs détails (permissions, propriétaire, taille, date).
    * `mkdir -p` : Crée un répertoire et ses sous-répertoires parents s'ils n'existent pas, sans renvoyer d'erreur.
  * **Quelle différence entre un chemin absolu et relatif ?**
    * **Chemin absolu** : Part toujours de la racine `/` du système (ex: `/home/user/13layers-f02/logs`). Il est valide peu importe le dossier où l'on se trouve.
    * **Chemin relatif** : Part du répertoire courant (ex: `logs/` ou `../s
  cripts`). Sa validité dépend de l'emplacement actuel.

---

## TP2 – Fichiers

  ### Exécution des commandes
  ```bash
    # Se placer dans le dossier du TP
cd ~/13layers-f02
cd ~/13layers-f02/projets


    # Création du fichier notes.txt avec 3 lignes
nano notes.txt
  Ligne 1 : Configuration serveurs
  Ligne 2 : Déploiement application
  Ligne 3 : Vérification des logs


    # Copie dans logs/
on se positionne sur  ~/13layers-f02
cp projets/notes.txt Logs/


    # Renommage de la copie en notes-archive.txt
mv ./Logs/notes.txt ./Logs/notes-archive.txt


    # Affichage du contenu
cat logs/notes-archive.txt
    Ligne 1 : Configuration serveur
    Ligne 2 : Déploiement application
    Ligne 3 : Vérification des logs

  ```

  ### Questions de réflexion
  * **Quelle différence entre `cp` et `mv` ?**
    * `cp` (copy) : Duplique un fichier ou dossier vers un nouvel emplacement tout en conservant l'original.
    * `mv` (move) : Déplace un fichier/dossier vers un autre emplacement ou le renomme. L'original n'existe plus à son ancien emplacement.
  * **Comment vérifier que l'original existe toujours ?**
    * En exécutant `ls projets/notes.txt` ou `ls projets/` pour vérifier la présence du fichier initial.

---

## TP3 – Recherche et redirections

  ### Exécution des commandes
  ```bash
    # Se placer dans le dossier du TP
cd ~/13layers-f02/Logs


    # Création du fichier app.log
nano app.log
2026-10-25 INFO System started\n2026-10-25 ERROR Database connection failed\n2026-10-25 WARN High memory usage\n2026-10-25 ERROR Timeout reading socket\n2026-10-25 INFO User logged in


    # Affichage des lignes ERROR avec grep
grep "ERROR" logs/app.log
    2026-10-25 ERROR Database connection failed
    2026-10-25 ERROR Timeout reading socket



    # Comptage des lignes ERROR avec wc -l
grep "ERROR" app.log | wc -l
    2

 
    # Expérimentation de > et >>
creons un fichier test.log avec du teste 
nano test.log
   bienvenu a la formaton sur linux et le devops
```
 echo "formation sur F01" >> test.log
 cat test.log
     bienvenu a la formaton sur linux et le devops
     formation sur F01

 echo "formation sur F02" > test.log
 cat test.log
     formation sur F02


  ### Questions de réflexion
  * **Que fait le pipe `|` ?**
    * Le pipe redirige la sortie de la commabde de gauche a l'entre de la commande de droite
  * **En quoi `>` est-il différent de `>>` ?**
    * `>` écrase complètement le contenu existant du fichier cible par le nouveau texte.
    * `>>` ajoute le nouveau texte à la fin du fichier sans effacer ce qui s'y trouvait.

---

## TP4 – Permissions

  ### Exécution des commandes
  ```bash
    # Se placer dans le dossier
    cd ~/13layers-f02/scripts


    # Création du script demo.sh   ```
nano demo.sh



    #!/bin/bash
permet d'induquer a linux le type d'interpreteur a utiliser


    echo "Bonjour 13Layers"
permet d'afficher le message au terminal


    # Affichage des droits avant modification
    ls -l 
 -rw-rw-r-- 1 florent-tiani florent-tiani 39 03 Nov.  14:40 demo.sh


    # Ajout du droit d'exécution pour le propriétaire
 chmod u+x demo.sh


    # Affichage des droits après modification
    ls -l 
 -rwxrw-r-- 1 florent-tiani florent-tiani 39 03 nov.  14:42 demo.sh


    # Exécution du script
    ./demo.sh
 Bonjour 13Layers
  ```


  ### Questions de réflexion

  Expliquez les droits `rwx`
r (Read / 4) : Droit de lire le contenu du fichier.
w (Write / 2) : Droit de modifier ou supprimer le fichier.
x (Execute / 1) : Droit d'exécuter le fichier comme un programme ou script.
  

   Pourquoi `chmod 777` n'est pas une pratique recommandée ?
`chmod 777` accorde tous les droits (lecture, écriture, exécution) à tout le monde (utilisateur, groupe, autres). Cela crée une faille de sécurité majeure en permettant à n'importe quel processus ou utilisateur non autorisé de modifier, infecter ou supprimer le fichier.





---

## TP5 – Diagnostic Linux

  ### Exécution des commandes
  ```bash
    # Identification de l'utilisateur connecté
    whoami

    # Version du noyau Linux
    uname -r
    6.16.8+kali-amd64
    # Espace disque disponible
    df -h
    Sys. de fichiers Taille Utilisé Dispo Uti% Monté sur
    udev               1,8G       0  1,8G   0% /dev
    tmpfs              389M    1,2M  388M   1% /run
    /dev/sda1           35G     18G   16G  53% /
    tmpfs              1,9G    4,0K  1,9G   1% /dev/shm
    tmpfs              1,0M       0  1,0M   0% /run/credentials/systemd-journald.service
    tmpfs              1,9G     60K  1,9G   1% /tmp
    tmpfs              1,0M       0  1,0M   0% /run/credentials/getty@tty1.service
    tmpfs              389M    104K  389M   1% /run/user/1000

    # Utilisation de la mémoire RAM
    free -h
                 total       utilisé      libre     partagé tamp/cache   disponible
    Mem:           3,8Gi       1,0Gi       2,3Gi        13Mi       737Mi       2,8Gi
    Échange:          0B          0B          0B

    # Liste des processus en cours (limité aux 10 premiers)
    ps aux | head -n 10
  ```

  ### Interprétation courte des résultats
  * **`whoami`** : Confirme le nom du compte utilisateur actuellement actif exécutant la session.
  * **`uname -r`** : Indique la version exacte du kernel Linux en cours d'exécution.
  * **`df -h`** : Montre la capacité, l'espace utilisé et l'espace disponible sur chaque partition disque montée.
  * **`free -h`** : Donne l'état de la mémoire physique (RAM) et du SWAP (utilisée, libre, mise en cache).
  * **`ps aux | head`** : Fournit une vue instantanée d
  es processus système avec leur PID, consommation CPU/RAM et la commande qui les a lancés.

---

## TP6 – Premier script Bash

  ### Exécution des commandes
  ```bash
    # Se placer dans le dossier scripts
    cd ~/13layers-f02/scripts

    # Création du script system_info.sh
      cat << 'EOF' > system_info.sh
      #!/usr/bin/env bash
      set -euo pipefail

      echo "=== DIAGNOSTIC SYSTEME ==="
      echo "Date et heure : $(date)"
      echo "Utilisateur : $(whoami)"
      echo "Répertoire courant : $(pwd)"
      echo "Noyau Linux : $(uname -r)"
      echo ""
      echo "=== ESPACE DISQUE ==="
      df -h 


    # Rendre le script exécutable
    chmod +x system_info.sh

    # Test du script
    ./system_info.sh
      === DIAGNOSTIC SYSTEME ===
    Date et heure : lun. 26 oct. 2026 19:47:13 CET
    Utilisateur : root07
    Répertoire courant : /home/root07/13layers-f02/scripts
    Noyau Linux : 6.16.8+kali-amd64

    === ESPACE DISQUE ===
    Sys. de fichiers Taille Utilisé Dispo Uti% Monté sur
    /dev/sda1           35G     18G   16G  53% /

  ```

  ### Questions de réflexion
  * **Pourquoi ajouter le shebang `#!/usr/bin/env bash` ?**
    * Le shebang indique au système quel interpréteur utiliser. La forme `/usr/bin/env bash` assure une meilleure portabilité sur différents systèmes Unix en cherchant dynamiquement le binaire `bash` dans le `PATH` du système.
  * **Qu'est-ce que l'automatisation apporte en DevOps ?**
    * Elle évite les 
  erreurs humaines lors des opérations répétitives, garantit la reproductibilité des environnements, accélère la vitesse de déploiement (CI/CD) et permet de gérer des infrastructures à grande échelle sans intervention manuelle constante.

