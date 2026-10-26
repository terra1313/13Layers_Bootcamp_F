# F02 — Rapport des travaux pratiques Linux
**Étudiant :** BELI georges 
**Environnement Linux / version :** Kali Linux

---

## TP1 – Navigation et arborescence

  ### Exécution des commandes et resultats
  ```bash
    # Création de l'arborescence
    mkdir -p ~/13layers-f02/{projets,logs,scripts}

    # Navigation vers le dossier principal
    cd ~/13layers-f02

    # Affichage du chemin courant
    pwd
    /home/root07/13layers-f02
    # Affichage de la liste détaillée
    ls -la
    total 20
    drwxrwxr-x  5 root07 root07 4096 26 oct.  19:13 .
    drwx------ 17 root07 root07 4096 26 oct.  19:13 ..
    drwxrwxr-x  2 root07 root07 4096 26 oct.  19:13 logs
    drwxrwxr-x  2 root07 root07 4096 26 oct.  19:13 projets
    drwxrwxr-x  2 root07 root07 4096 26 oct.  19:13 scripts

  ```

  ### Questions de réflexion
  * **À quoi servent `pwd`, `ls -la` et `mkdir -p` ?**
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

    # Création du fichier notes.txt avec 3 lignes
    echo "Ligne 1 : Configuration serveur" > projets/notes.txt
    echo "Ligne 2 : Déploiement application" >> projets/notes.txt
    echo "Ligne 3 : Vérification des logs" >> projets/notes.txt

    # Copie dans logs/
    cp projets/notes.txt logs/

    # Renommage de la copie en notes-archive.txt
    mv logs/notes.txt logs/notes-archive.txt

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
    * En exécutant `ls projets/notes.txt` ou `ls projets/` pour vérif
  ier la présence du fichier initial.

---

## TP3 – Recherche et redirections

  ### Exécution des commandes
  ```bash
    # Se placer dans le dossier du TP
    cd ~/13layers-f02

    # Création du fichier app.log
    echo -e "2026-10-25 INFO System started\n2026-10-25 ERROR Database connection failed\n2026-10-25 WARN High memory usage\n2026-10-25 ERROR Timeout reading socket\n2026-10-25 INFO User logged in" > logs/app.log

    # Affichage des lignes ERROR avec grep
    grep "ERROR" logs/app.log
    2026-10-25 ERROR Database connection failed
    2026-10-25 ERROR Timeout reading socket


    # Comptage des lignes ERROR avec wc -l
    grep "ERROR" logs/app.log | wc -l
    2

    # Expérimentation de > et >>
    echo "Test écrasement" > test_redirection.txt
    echo "Test ajout 1" >> test_redirection.txt
    echo "Test ajout 2" >> test_redirection.txt
    cat test_redirection.txt
    Test écrasement
    Test ajout 1
    Test ajout 2
  ```

  ### Questions de réflexion
  * **Que fait le pipe `|` ?**
    * Le pipe redirige la sortie standard (*stdout*) de la commande de gauche pour qu'elle serve directement d'entrée standard (*stdin*) à la commande de droite.
  * **En quoi `>` est-il différent de `>>` ?**
    * `>` écrase complète
  ment le contenu existant du fichier cible par le nouveau texte.
    * `>>` ajoute (*append*) le nouveau texte à la fin du fichier sans effacer ce qui s'y trouvait.

---

## TP4 – Permissions

  ### Exécution des commandes
  ```bash
    # Se placer dans le dossier
    cd ~/13layers-f02

    # Création du script demo.sh
    echo '#!/bin/bash' > scripts/demo.sh
    echo 'echo "Bonjour 13Layers"' >> scripts/demo.sh

    # Affichage des droits avant modification
    ls -l scripts/demo.sh
    -rw-rw-r-- 1 root07 root07 36 26 oct.  19:27 scripts/demo.sh

    # Ajout du droit d'exécution pour le propriétaire
    chmod u+x scripts/demo.sh

    # Affichage des droits après modification
    ls -l scripts/demo.sh
    -rwxrw-r-- 1 root07 root07 36 26 oct.  19:27 scripts/demo.sh

    # Exécution du script
    ./scripts/demo.sh
    Bonjour 13Layers
  ```

  ### Questions de réflexion
  * **Expliquez les droits `rwx` :**
    * `r` (Read / 4) : Droit de lire le contenu du fichier.
    * `w` (Write / 2) : Droit de modifier ou supprimer le fichier.
    * `x` (Execute / 1) : Droit d'exécuter le fichier comme un programme ou script.
  * **Pourquoi `chmod 777` n'est pas une pratique recommandée ?**
    * `chmod 777` accorde tous les droits (lecture, é
  criture, exécution) à tout le monde (utilisateur, groupe, autres). Cela crée une faille de sécurité majeure en permettant à n'importe quel processus ou utilisateur non autorisé de modifier, infecter ou supprimer le fichier.

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
      df -h /
      EOF

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

