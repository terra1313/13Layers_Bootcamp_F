# Répondons aux questions du Catalogue - F02 sur Linux

**Etudiant:** Wandji Ndjiyou Adan  
**Github :** 13Layers Academy  
**branche :** Bootcamp_F02__Adan_wandji

---

### 1. Linux
* Qu'est-ce que Linux ? C'est un système d'exploitation libre et gratuit qui permet de faire fonctionner un ordinateur.
* la difference est la suivante:
* Noyau Linux : C'est le cœur du système. Il fait le lien entre le matériel (processeur, mémoire) et les logiciels.
* Distribution (ex. Ubuntu) :** C'est un ensemble complet prêt à l'emploi qui contient le noyau Linux, un bureau et des logiciels préinstallés.
* Terminal : C'est l'écran texte où l'on tape des commandes pour interagir directement avec le système.

---

### 2. Système de fichiers
* `/` : La **racine**, le point de départ de tout le disque.
* `/home` : Le dossier où sont rangés les **fichiers personnels** des utilisateurs.
* `/etc` : Le dossier qui contient les **fichiers de configuration** du système.
* `/var/log` : Le dossier où sont stockés les **journaux d'événements**logs.
* `/tmp` : Un dossier pour les **fichiers temporaires**, vidé au redémarrage.

---

### 3. Navigation
* `pwd` : Affiche le dossier courant où vous vous trouvez.
* `ls -la` : Affiche la liste de tous les fichiers y compris les fichiers cachés avec leurs détails.
* `cd ..` : Permet de remonter d'un dossier en arrière.
* `cd ~` : Permet de revenir immédiatement à votre dossier personnel (`/home/utilisateur`).
* **Exemple :**
  ```bash
  cd /var/log
  pwd         # Affiche: /var/log
  cd ..       # Passe dans /var
  cd ~        # Retourne dans votre dossier personnel
  ```

---

### 4. Manipulation des fichiers
* `touch` : Crée un fichier vide ou met à jour sa date.
* `mkdir -p` : Crée un dossier ainsi que ses sous-dossiers s'ils n'existent pas.
* `cp` : Copie un fichier ou un dossier.
* `mv` : Déplace ou renomme un fichier.
* `rm` : Supprime définitivement un fichier.
* **Précaution avec `rm` :** La suppression est immédiate et sans corbeille. Attention à l'option `rm -rf` qui efface des dossiers entiers sans confirmation.

---

### 5. Visualisation
* `cat` : Affiche tout le contenu d'un fichier d'un coup (idéal pour les fichiers courts).
* `less` : Affiche le contenu page par page pour pouvoir lire facilement les longs fichiers.
* `head` : Affiche seulement les 10 premières lignes.
* `tail -n 10` : Affiche seulement les 10 dernières lignes (très pratique pour lire les derniers logs).

---

### 6. Recherche / pipes
* `grep` : Cherche un mot ou un motif précis dans un texte.
* Pipe `|` : Envoie la sortie de la première commande vers l'entrée de la deuxième commande.
* Redirection `>` : Écrit le résultat dans un fichier en **écrasant** l'ancien contenu.
* Redirection `>>` : Écrit le résultat dans un fichier en l'**ajoutant** à la suite du texte existant.
* **Commande pour compter les lignes contenant "ERROR" :**
  ```bash
  grep "ERROR" fichier.log | wc -l
  ```

---

### 7. Permissions
* `r` (Read) : Droit de lire / `w` (Write) : Droit de modifier / `x` (eXecute) : Droit d'exécuter.
* Propriétaire (u) / Groupe (g) / Autres (o).
* `chmod u+x script.sh` : Donne le droit d'exécuter (`x`) le script au propriétaire (`u`).
* **Pourquoi éviter `chmod 777` ?** Parce que cela donne tous les droits à tout le monde sur le fichier, ce qui pose un grave problème de sécurité.

---

### 8. Utilisateurs
* **Utilisateur normal :** A des droits restreints à son dossier personnel.
* **`root` :** Le super-administrateur qui a tous les droits sur toute la machine.
* **`sudo` :** Permet à un utilisateur autorisé d'exécuter une commande spécifique avec les privilèges de `root`.
* **Principe du moindre privilège :** Ne donner à un utilisateur ou un programme que les droits strictement nécessaires pour réduire les risques de piratage ou de mauvaises manipulations.

---

### 9. Surveillance
* `ps aux` : Liste tous les programmes/processus en cours de fonctionnement.
* `top` : Affiche en temps réel l'utilisation du processeur et de la mémoire RAM.
* `df -h` : Affiche l'espace disponible sur le disque dur.
* `free -h` : Affiche la mémoire RAM utilisée et restante.
* `uname -r` : Affiche la version du noyau Linux installé.

---

### 10. Bash et DevOps
* **Script Bash :** Fichier contenant une série de commandes exécutées à la chaîne de manière automatique.
* **Shebang `#!/usr/bin/env bash` :** Première ligne du script qui indique au système quel programme doit lire et lancer le fichier.
* **2 tâches DevOps automatisables :**
  1. Le déploiement automatique d'applications sur un serveur.
  2. La sauvegarde automatique quotidienne des bases de données.