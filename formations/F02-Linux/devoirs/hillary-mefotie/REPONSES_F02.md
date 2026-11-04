# F02 — Réponses au questionnaire Linux

**Étudiant :** `MEFOTIE KENGNE Hillary Lucere`
**GitHub :**  `https://github.com/hillary-dev81`
**Branche :** `Bootcamp_F02__hillary_mefotie`

Répondez aux 10 questions du fichier [01_CATALOGUE_QUESTIONS.md](../../01_CATALOGUE_QUESTIONS.md) **dans vos propres mots**.

## Question 1 — Linux

Réponse :
    1-Linux est un système d'exploitation (le noyau d'un système d'exploitation) qui permet à un ordinateur de fonctionner et de faire communiquer ses composants matériels avec les logiciels.

    2-Différence entre le noyau Linux, une distribution et un terminal ?

-   Le noyau Linux (Kernel) est le cœur du système, il fait le lien entre les logiciels et le matériel de l'ordinateur, il gère le processeur, la mémoire, les périphériques et les processus.

-   Une distribution Linux est un ensemble de logiciels construit autour du noyau Linux comprenant Le noyau Linux, des outils système, un gestionnaire de paquets pour installer des logiciels, une interface graphique et des applications.

-   Le terminal est une application qui permet de communiquer avec le système en tapant des commandes, par exemple "mkdir projets" pour creer un dossier.


## Question 2 — Système de fichiers

Réponse :
    Expliquons les roles des commandes :
-   `/`: Dossier principal, le dossier de départ de toute l'arborescence Linux.
-   `/home`: Ce dossier contient les fichiers personnels des utilisateurs.
-   `/etc`: Ce dossier contient principalement les fichiers de configuration du système et de certains logiciels.
        par exemple : /etc/hostname : nom de l'ordinateur.
                       /etc/hosts : associations entre des noms et des adresses IP.
                       /etc/passwd : informations sur les comptes utilisateurs.
-   `/var/log` : ce dossier contient les fichiers journaux (logs) sur le fonctionnement du systeme, il aide à surveiller le système et à comprendre certaines erreurs. (ls /var/log affiche les journaux disponibles.)
-   `/tmp` : Ce dossier sert à stocker des fichiers temporaires créés par les applications et les utilisateurs.


## Question 3 — Navigation

Réponse :
     Décrivons les commandes : 
-   `pwd` : signifie Print Working Directory, cette commande affiche le chemin du dossier dans lequel on se trouve actuellement.
    exemple : bash 
                $ pwd
                /home/Documents/devoirs
              
-   `ls -la` : afficher tous les fichiers et dossiers, ls affiche le contenu d'un dossier, -l affiche les informations détaillées (droits, propriétaire, taille, date), -a affiche également les fichiers cachés.
    exemple : bash 
                $ ls -la
                drwxr-xr-x  4 hillary hillary 4096 Documents
                drwxr-xr-x  2 hillary hillary 4096 Images
                -rw-r--r--  1 hillary hillary  250 notes.txt
                -rw-r--r--  1 hillary hillary  100 .bashrc

-   `cd ..` : signifie Change Directory (changer de dossier), permet de revenir au dossier parent et les deux points .. désignent le dossier parent, c'est-à-dire le dossier qui contient celui dans lequel tu te trouves.
    exemple : si je suis dans /home/Documents/devoirs, alors
              bash
                $ cd ..
                /home/Documents

-   `cd ~` : revenir au dossier personnel, le symbole ~ représente le dossier personnel de l'utilisateur connecté.
    exemple : si je suis dans /var/log, alors
              bash
                $ cd ~
                /home/Documents


## Question 4 — Manipulation de fichiers

Réponse :
    À quoi servent : 
-   `touch` : permet de créer un fichier vide s'il n'existe pas. (touch fichier.txt)
-   `mkdir -p` : signifie Make Directory, créer un dossier, l'option -p permet de créer plusieurs niveaux de dossiers, même si les dossiers parents n'existent pas encore. (mkdir -p projets/linux/exercices)
-   `cp` : ermet de copier un fichier ou un dossier vers un autre emplacement. (cp fichier.txt Documents/)
-   `mv` :  permet de déplacer un fichier ou un dossier, mais aussi de le renommer. (mv presentation.txt expose.txt)
-   `rm` :  permet de supprimer un fichier ou un dossier. (rm fichier.txt)

    Quelle précaution prendre avec `rm`:
        .   Vérifie le nom du fichier ou du dossier.
        .   Vérifie son emplacement avec pwd.
        .   Vérifie son contenu avec ls.
        .   Évite d'utiliser rm -r sans être certain du chemin.
        .   Évite particulièrement rm -rf, qui supprime récursivement sans demander de confirmation.


## Question 5 — Lecture de fichiers

Réponse :
    Comparons :
-   `cat` : signifie concatenate, elle affiche directement le contenu complet d'un fichier dans le terminal, on l'utilise pour lire un petit fichier, afficher rapidement le contenu d'un fichier, afficher plusieurs fichiers à la suite.
-   `less` : permet de consulter un fichier page par page, sans afficher tout son contenu d'un seul coup, on l'utilise pour lire un fichier volumineux, consulter des journaux système, rechercher une information dans un long document.
-   `head` :  affiche les premières lignes d'un fichier, par défaut, il affiche les 10 premières lignes, on l'utilise Pour vérifier le début d'un fichier, consulter rapidement les premières lignes d'un document, vérifier les premières données d'un fichier CSV.
-   `tail -n 10` : afficher les 10 dernières lignes d'un fichier, on l'utilise pour Pour consulter les dernières lignes d'un fichier, vérifier les derniers événements enregistrés dans un journal système, examiner les dernières informations ajoutées à un fichier.


## Question 6 — Recherche et redirections

Réponse :
    Expliquons :  
-   `grep` : permet de rechercher une expression dans un fichier et d'afficher les lignes qui la contiennent.
-   le pipe `|` : transmettre le résultat d'une commande à une autre
-   les redirections `>` et `>>` : `>` permet d'enregistrer le résultat d'une commande dans un fichier, si le fichier existe déjà, son ancien contenu est remplacé,
`>>` permet d'ajouter le résultat d'une commande à la fin d'un fichier, sans supprimer son contenu précédent.
    Donnons une commande qui compte les lignes contenant `ERROR`: 
    bash
    $ grep -c "ERROR" logs.txt


## Question 7 — Permissions
r (read)	Lecture	Lire le contenu du fichier.
w 
x

Réponse :
    Expliquons 
-   `r`: (read)	Lecture	 Lire le contenu du fichier.
-   `w`: (write)	Écriture	Modifier le contenu du fichier.
-   `x`: (execute)	Exécution	Exécuter le fichier comme un programme ou un script.
Pour un dossier,
    r : afficher la liste des éléments du dossier.
    w : créer, supprimer ou renommer des éléments dans le dossier (avec les permissions).
    x : accéder au dossier et traverser son chemin.
-   le propriétaire (u) : l'utilisateur qui possède le fichier.
-   le groupe : (g) : les utilisateurs appartenant au groupe associé au fichier.
-   Les autres (o) : tous les autres utilisateurs du système.

    Que fait `chmod u+x script.sh` : cette commande ajoute le droit d'exécution au propriétaire de script.sh, sans modifier les autres permissions.

    Pourquoi éviter `chmod 777` : car il donne tous les droits à tout le monde


## Question 8 — Utilisateurs

Réponse :
    Quelles différences entre : 
-   utilisateur normal : le user est un compte classique utilisé pour travailler quotidiennement sur l'ordinateur.
-   `root`  : le superutilisateur est le compte qui possède les privilèges administratifs les plus élevés sous Linux.
-   `sudo` : superuser DO, il permet à un utilisateur autorisé d'exécuter une commande avec des privilèges élevés, généralement ceux de root, sans devoir rester connecté en permanence avec le compte root.

    Pourquoi appliquer le principe du moindre privilège ? 
Car le principe du moindre privilège consiste à donner à chaque utilisateur ou programme uniquement les permissions nécessaires pour accomplir son travail.


## Question 9 — Surveillance système

Réponse :
    Expliquons les informations fournies par 
-   `ps aux`: affiche la liste des processus actuellement actifs sur le système.
elle affiche :  Colonne	        Signification
                USER	    Utilisateur qui exécute le processus.
                PID	        Identifiant unique du processus.
                %CPU	    Pourcentage d'utilisation du processeur.
                %MEM	    Pourcentage d'utilisation de la mémoire.
                VSZ	        Taille de la mémoire virtuelle.
                RSS	        Mémoire physique utilisée.
                STAT	    État du processus.
                COMMAND	    Commande ou programme exécuté.

-   `top` :  affiche les processus et actualise régulièrement les informations, surveiller les processus en temps réel.Elle permet notamment de consulter :
    .   L'utilisation du processeur (CPU).
    .   L'utilisation de la mémoire.
    .   Le nombre de processus actifs.
    .   Les processus qui consomment le plus de ressources.

-   `df -h` :  Disk Free, affiche l'espace utilisé et disponible sur les systèmes de fichiers. L'option -h signifie human-readable : les tailles sont affichées dans des unités faciles à lire (Ko, Mo, Go).

-   `free -h` :  affiche les informations relatives à la mémoire vive (RAM) et à la mémoire d'échange (swap).

-   `uname -r` : Unix Name, l'option -r permet d'afficher la version du noyau Linux actuellement utilisé.


## Question 10 — Bash et DevOps

Réponse :
    -   Un script Bash est un fichier texte qui contient plusieurs commandes Linux écrites dans un ordre précis.Il permet d'automatiser des tâches répétitives sans devoir taper chaque commande manuellement dans le terminal.

    -   Expliquons le shebang `#!/usr/bin/env bash`: 
Le shebang est la première ligne d'un script. Il commence par #!.
.   #! : indique au système quel interpréteur utiliser pour exécuter le script.
.   /usr/bin/env : recherche un programme dans les chemins définis dans la variable d'environnement PATH.
.   bash : indique que l'interpréteur recherché est Bash.

    -   Citons deux tâches DevOps automatisables: 
    sauvegarder des fichiers : script qui copie automatiquement un dossier important vers un dossier de sauvegarde:
    bash
        #!/usr/bin/env bash

        mkdir -p sauvegarde
        cp -r Documents sauvegarde/

        echo "Sauvegarde terminée !"

    surveiller l'espace disque : script qui affiche régulièrement l'espace disque disponible
    bash
        #!/usr/bin/env bash

        echo "Vérification de l'espace disque..."
        df -h