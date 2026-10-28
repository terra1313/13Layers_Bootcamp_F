# Réponses aux 10 questions — F02 Linux

**1. Linux** — Linux est un système d'exploitation open-source. Le **noyau** est le cœur du système (il gère le matériel). Une **distribution** (ex: Ubuntu) est un ensemble composé du noyau + des logiciels + un installateur. Le **terminal** est l'interface en ligne de commande pour interagir avec le système.

**2. Système de fichiers** — 
- `/` : la racine de tout le système.
- `/home` : les dossiers personnels des utilisateurs.
- `/etc` : les fichiers de configuration du système.
- `/var/log` : les fichiers journaux (logs) du système.
- `/tmp` : fichiers temporaires.

**3. Navigation** — 
- `pwd` : affiche le chemin du dossier courant.
- `ls -la` : liste tous les fichiers (même cachés) avec détails (droits, taille).
- `cd ..` : remonte d'un dossier.
- `cd ~` : retourne dans le dossier personnel de l'utilisateur.
*Exemple :* `cd ~/13layers-f02/projets`

**4. Manipulation** — 
- `touch` : crée un fichier vide.
- `mkdir -p` : crée un dossier (et ses parents s'ils n'existent pas).
- `cp` : copie un fichier.
- `mv` : déplace ou renomme un fichier.
- `rm` : supprime un fichier. 
*Précaution :* `rm` est irréversible, il n'y a pas de corbeille. Il faut faire attention avec `rm -rf`.

**5. Visualisation** — 
- `cat` : affiche tout le contenu (pour petits fichiers).
- `less` : affiche page par page (pour gros fichiers).
- `head` : affiche les 10 premières lignes.
- `tail -n 10` : affiche les 10 dernières lignes.

**6. Recherche / pipes** — 
- `grep` : cherche du texte dans un fichier.
- `|` (pipe) : redirige la sortie d'une commande vers l'entrée d'une autre.
- `>` : redirige et écrase le contenu.
- `>>` : redirige et ajoute à la fin du fichier.
*Commande :* `grep "ERROR" app.log | wc -l`

**7. Permissions** — 
- `r` (read) : lecture. `w` (write) : écriture. `x` (execute) : exécution.
- `chmod u+x script.sh` : ajoute le droit d'exécution à l'utilisateur propriétaire.
- *Pourquoi éviter 777 ?* Car cela donne tous les droits (lecture, écriture, exécution) à tout le monde, ce qui est une faille de sécurité majeure.

**8. Utilisateurs** — 
- L'utilisateur normal a des droits limités. 
- `root` est le super-administrateur (tous les droits). 
- `sudo` permet d'exécuter une commande en tant que root temporairement. 
- Le principe du moindre privilège consiste à donner uniquement les droits nécessaires pour accomplir une tâche, limitant ainsi les dégâts en cas d'erreur ou de piratage.

**9. Surveillance** — 
- `ps aux` : liste tous les processus en cours.
- `top` : affiche les processus en temps réel (CPU/RAM).
- `df -h` : affiche l'espace disque.
- `free -h` : affiche la mémoire RAM.
- `uname -r` : affiche la version du noyau.

**10. Bash et DevOps** — Un script Bash est un fichier texte contenant une série de commandes. Le shebang `#!/usr/bin/env bash` indique au système quel interpréteur utiliser. En DevOps, on automatise la sauvegarde des données ou le déploiement d'applications.