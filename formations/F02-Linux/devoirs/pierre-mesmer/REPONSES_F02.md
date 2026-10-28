# F02 — Réponses au questionnaire Linux

**Étudiant :*MOUKOURY MOTTO PIERRE MESMER* 
**GitHub :*Shadow30-CURRY* 
**Branche :** `Bootcamp_F02__MESMER_PIERRE`

Répondez aux 10 questions du fichier [01_CATALOGUE_QUESTIONS.md](../../01_CATALOGUE_QUESTIONS.md) **dans vos propres mots**.

## Question 1 — Linux
Réponse : 
 **LINUX** : est un système d'éxploitation libre monolitique modulaire et accessible a tous c'est-a-dire open source.
  - la différence : le **Noyau** c'est lui le coeur du système qui gre le matériel, la mémoire et les processus. La **Distribution** quant a elle est une combaison de `Noyau + logiciels + gestionnaires de packages` orientes  vers un besoin en particulier. Et pour terminer le **Terminal** est une fenêtre ou l'on tape des commandes qui permettent d'effectuer des tâches !

## Question 2 — Système de fichiers
Réponse :
  - `/` : c'est la racine ou encore le point de départ de tous les fichiers et répertoires.
  - `/home` : contient les dossiers personnels des utilisateurs.
  - `/etc` : contient les fichiers de configuration du système et des services.
  - `/var/log`: contient les journaux du système et de certaines applications.
  - `/tmp` : contient les dossiers temporaires qui sont souvent supprimes automatiquement ( cela dépend de la configuration du système).

## Question 3 — Navigation
Réponse :
  - `pwd` : affiche le chemin du répertoire courant.
  - `ls -la` : affiche les fichiers, y compris les compris les fichiers caches avec les informations détaillées.
  - `cd ..` : remonte d'un dossier. c'est le répertoire parent.
  - `cd ~` : retourne au répertoire personnel de l'utilisateur.

  **Exemple** :
  ```Bash
    `~/CloneGit/Initiation_linux/13Layers_Bootcamp_F/formations/F02-Linux/devoirs/MESMER_PIERRE (Bootcamp_F02__MESMER_PIERRE)`
    $ ls -la
    total 12
    drwxr-xr-x 1 pierr 197612    0 Oct 26 13:15 ./
    drwxr-xr-x 1 pierr 197612    0 Oct 26 13:03 ../
    -rw-r--r-- 1 pierr 197612    0 Oct 26 13:15 FICHE_SUVI.md
    -rw-r--r-- 1 pierr 197612    0 Oct 26 13:15 RAPPORT_TP.md
    -rw-r--r-- 1 pierr 197612 1754 Oct 27 11:58 REPONSES_F02.md
    drwxr-xr-x 1 pierr 197612    0 Oct 27 10:50 preuves/
    drwxr-xr-x 1 pierr 197612    0 Oct 26 13:18 scripts/

   `~/CloneGit/Initiation_linux/13Layers_Bootcamp_F`
    $ pwd
    /c/Users/pierr/CloneGit/Initiation_linux/13Layers_Bootcamp_F

    `~/CloneGit/Initiation_linux/13Layers_Bootcamp_F`
    $ cd ..

    `~/CloneGit/Initiation_linux`
    $ cd ~

    `~ `

  ```


## Question 4 — Manipulation de fichiers
Réponse :
  - `touch` : crée un fichier vide s'il n'existe pas.
  - `mkdir -p` : crée un répertoire et ses répertoires parents si nécessaires. 
  - `cp` : copie un fichier ou un répertoire dans un autre.
  - `mv` : déplace ou renomme un fichier ou un répertoire.
  - `rm` : supprime des fichiers. la précaution a prendre avec cette commande est de vérifier soigneusement le fichier ou le nom du répertoire que l'on veut supprimer avant de le faire car la suppression est définitive !
  **Exemple** :
  ```Bash
    `mkdir -p exercice/linux`
    `cd exercice/linux`
    `touch RAPPORT_TP.md`
    `cp RAPPORT_TP.md fichier.md`
    `mv fichier.md RPT.md`
    ls -la 
  ```
## Question 5 — Lecture de fichiers
Réponse : 
 Les commandes `cat` (pour lire un petit fichier) `less` (pour consulter un fichier plus lourd) `head` (pour voir le début d'un fichier) `tail` (voir la fin) permettent toutes d'afficher le contenu des fichiers mais pas de la même manière.
 `cat` affiche tout simplement le contenu du fichier on, `less` lui il va afficher le contenu page par page, `head` va afficher par seulement les 10 premières lignes, `tail -n 10` quant a lui va afficher les 10 dernières lignes.
 **Exemple** :
 ```bash
    cat notes.txt
    less notesgiga.txt
    head notes.txt
    tail -n 10 notesgiga.txt
 ```

## Question 6 — Recherche et redirections
Réponse :
 - `grep` recherche des lignes contenant un texte ou correspond a un motif.
 - le pipe `|` transmet la sortie d'une commande a l’entrée d'une autre commande.
 - la redirection `>` écrit dans un fichier en l’écrasant.
 - la redirection `>>` écrit a la fin du fichier sans l’écraser.
 - pour compter les lignes contenant [ERROR] dans un fichier, on utilise:voir exemple.
 **Exemple** : 
 ```Bash
    echo "premiere ligne" > reponse.txt
    echo "derniere ligne" >> reponse.txt
    cat reponse.txt | grep 'ERROR'
 ```
## Question 7 — Permissions
Réponse :
 Linux utilise des permissions pour contrôler les actions autorises sur les fichiers et les répertoires. nous avons :
    - `r` pour `read` lire le contenu.
    - `w` pour `write` modifier le contenu.
    - `x` pour `execute` exécuter le fichier.
 Elles sont définies pour 03 categories :
    - utilisateur propriétaire `u`est le propriétaire du fichier.
    - le groupe `g` : les utilisateurs d'un groupe.
    - les autres `o` : tous les autres utilisateurs.
 ```Bash
 chmod u+x script.sh  donne au propriétaire le droit d’exécuter le script.
 ```
 la commande `chmod 777` donne les droits de lecture, d’écriture et d'execution a tous le monde, donc il faut l’éviter pour plus de sécurité.

## Question 8 — Utilisateurs
Réponse :
 `l'utilisateur normal` dispose de permissions limitées aux ressources auxquelles il a accès mais permet aussi de limiter les risques de modification des configurations non voulues du système.
 Tant dis que le `root` possède des privilèges très étendus sur le système (tous les droits).
 `sudo` quant a lui execute une commande avec les droits `root`.
 **la raison du principe** : on applique le principe du `moindre privilege` pour accorder les droits nécessaires et limiter les dégâts d'une erreur. 

## Question 9 — Surveillance système
Réponse :
 - `ps aux` affiche tous les processus.
 - `top` affiche les processus en temps réel.
 - `df -h` affiche l'espace utilise et disponible du disque.
 - `free -h` affiche l'utilisation de la RAM.
 - `uname -r` affiche une version du noyau.

## Question 10 — Bash et DevOps
Réponse :
**Un script Bash** est un fichier contenant une suite de commandes pour les automatiser.
Le shabang `#!/usr/bin/env bash` est la première ligne qui va indiquer au système que le fichier doit être interprète par Bash.
**Deux taches DevOps automatisables** : on peut avoir `la sauvegarde des données` et `la surveillance des serveurs`.
**Exemple** :
```bash
    #!/usr/bin/env bash
    écho "verification de l'espace du disque..."
    df -h
    écho "verification terminée."
```