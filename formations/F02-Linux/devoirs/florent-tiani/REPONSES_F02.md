# F02 – Questionnaire Linux

## 1. Linux – Définitions et distinctions
* **Linux** : Un système d'exploitation open source basé sur Unix.
* **Noyau Linux (Kernel)** : Le cœur du système d'exploitation. Il gère l'interaction directe entre le matériel informatique (CPU, mémoire, disques, périphériques) et les logiciels applicatifs.
* **Distribution Linux (ex. Ubuntu)** : Un système d'exploitation complet qui intègre le noyau Linux avec un ensemble de logiciels, d'outils système, d'interfaces graphiques et un gestionnaire de paquets.
* **Terminal** : Une interface textuelle (CLI - Command Line Interface) permettant à l'utilisateur de saisir des commandes interprétées par un shell pour interagir avec le système d'exploitation.

---

## 2. Système de fichiers
* `/` (Racine) : Le point de départ absolu de l'arborescence Linux sous lequel se trouvent tous les fichiers et répertoires.
* `/home` : Répertoire contenant les dossiers personnels des utilisateurs (documents, configurations personnelles, etc.).
* `/etc` : Contient l'ensemble des fichiers de configuration globale du système et des services installés.
* `/var/log` : Stocke les fichiers de journalisation (logs) générés par le système et les applications pour le suivi et le diagnostic.
* `/tmp` : Répertoire réservé aux fichiers temporaires créés par le système ou les applications, souvent vidé au redémarrage.

---

## 3. Navigation
* `pwd` (*Print Working Directory*) : Affiche le chemin absolu du répertoire courant dans lequel on se trouve.
* `ls -la` : Liste le contenu du répertoire courant, y compris les fichiers cachés (commençant par `.`), avec les détails complets (permissions, propriétaire, taille, date).
* `cd ..` : Permet de remonter d'un niveau dans l'arborescence (vers le répertoire parent).
* `cd ~` : Permet de revenir directement dans le dossier personnel (*home directory*) de l'utilisateur connecté.

**Exemple d'utilisation :**
```bash
pwd
# Sortie : /home/user/projets

cd ..
pwd
# Sortie : /home/user

cd ~
pwd
# Sortie : /home/user
```

---

## 4. Manipulation des fichiers
* `touch` : Crée un fichier vide s'il n'existe pas ou met à jour les dates d'accès/modification d'un fichier existant.
* `mkdir -p` : Crée un répertoire ainsi que tous ses répertoires parents manquants en une seule commande (sans renvoyer d'erreur si le dossier existe déjà).
* `cp` : Copie des fichiers ou des répertoires d'une source vers une destination.
* `mv` : Déplace un fichier/dossier ou le renomme s'il reste dans le même répertoire.
* `rm` : Supprime définitivement des fichiers ou répertoires.

**Précaution à prendre avec `rm` :**
La suppression sous Linux via `rm` est irréversible (il n'y a pas de corbeille). Il faut faire très attention à ne pas exécuter `rm -rf /` ou `rm -rf *` dans le mauvais répertoire. Toujours vérifier son emplacement avec `pwd` avant une suppression récursive.

---

## 5. Visualisation de fichiers
* `cat` : Affiche la totalité du contenu d'un fichier dans la console. À utiliser pour les petits fichiers.
* `less` : Affiche le contenu d'un fichier page par page avec possibilité de naviguer (vers le haut/bas) et de rechercher. Idéal pour les gros fichiers.
* `head` : Affiche par défaut les 10 premières lignes d'un fichier.
* `tail -n 10` : Affiche les 10 dernières lignes d'un fichier. Utile pour consulter les logs récents (surtout combiné avec `-f` pour le temps réel).

---

## 6. Recherche et redirections
* `grep` : Outil de recherche textuelle qui filtre et affiche les lignes correspondant à un motif donné dans un fichier ou un flux.
* Pipe (`|`) : Redirige la sortie standard (*stdout*) d'une commande pour qu'elle devienne l'entrée standard (*stdin*) d'une autre commande.
* Redirection `>` : Redirige la sortie d'une commande vers un fichier en **écrasant** son contenu existant.
* Redirection `>>` : Redirige la sortie d'une commande vers un fichier en **ajoutant** (append) le texte à la fin du fichier sans écraser le contenu.

**Commande pour compter les lignes contenant `ERROR` :**
```bash
grep "ERROR" fichier.log | wc -l
```

---

## 7. Permissions Linux
* `r` (Read - 4) : Droit de lire le contenu d'un fichier ou de lister un répertoire.
* `w` (Write - 2) : Droit de modifier ou supprimer un fichier, ou d'ajouter/supprimer des fichiers dans un répertoire.
* `x` (Execute - 1) : Droit d'exécuter un fichier (script/programme) ou de traverser un répertoire.
* **Propriétaire (User)** : L'utilisateur qui possède le fichier.
* **Groupe (Group)** : Le groupe d'utilisateurs associé au fichier partageant certaines permissions.

**Que fait `chmod u+x script.sh` ?**
Cette commande ajoute le droit d'exécution (`+x`) uniquement pour le propriétaire (`u` pour user) du fichier `script.sh`.

**Pourquoi éviter `chmod 777` ?**
`chmod 777` donne tous les droits (lecture, écriture, exécution) à **tout le monde** (Propriétaire, Groupe, Autres). C'est une faille de sécurité majeure car n'importe quel utilisateur ou processus compromis sur le système peut modifier ou supprimer le fichier.

---

## 8. Utilisateurs et privilèges
* **Utilisateur normal** : Dispose de droits restreints limités à son propre répertoire personnel et à ses fichiers.
* **root** : Le compte administrateur suprême (*superuser*) possédant tous les privilèges sur le système sans aucune restriction.
* **sudo** (*SuperUser DO*) : Commande permettant à un utilisateur autorisé d'exécuter une commande spécifique avec les privilèges de `root` temporairement.

**Pourquoi appliquer le principe du moindre privilège ?**
Ce principe stipule qu'un utilisateur ou une application ne doit posséder que les privilèges strictly nécessaires à l'accomplissement de sa tâche. Cela limite l'impact des erreurs humaines, des scripts malveillants ou des piratages système.

---

## 9. Surveillance du système
* `ps aux` : Affiche la liste détaillée de tous les processus en cours d'exécution sur le système à un instant T.
* `top` : Affiche en temps réel les processus dynamiques ainsi que l'utilisation globale du CPU et de la mémoire RAM.
* `df -h` : Affiche l'occupation de l'espace disque des systèmes de fichiers dans un format lisible pour l'humain (`-h` pour Ko, Mo, Go).
* `free -h` : Affiche l'utilisation de la mémoire RAM et du fichier d'échange (*swap*).
* `uname -r` : Affiche la version exacte du noyau Linux actuellement utilisé.

---

## 10. Bash et DevOps
* **Script Bash** : Un fichier texte contenant une suite de commandes Shell exécutées séquentiellement par le système.
* **Shebang `#!/usr/bin/env bash`** : Placée sur la première ligne d'un script, cette ligne indique au système quel interpréteur utiliser pour exécuter le script. L'utilisation de `/usr/bin/env bash` garantit la portabilité sur différents systèmes Unix en cherchant Bash dans le `PATH`.

**Deux tâches DevOps automatisables avec Bash :**
1. **Sauvegarde et archivage automatique** : Compression de bases de données/fichiers de log et envoi vers un stockage distant S3 ou un serveur de backup.
2. **Déploiement d'application** : Automatisation du clonage d'un dépôt Git, installation des dépendances, compilation et redémarrage des services lors d'une intégration continue (CI/CD).