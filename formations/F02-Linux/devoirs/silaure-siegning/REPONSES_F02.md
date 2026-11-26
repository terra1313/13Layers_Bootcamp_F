# F02 — Questionnaire Linux

**13Layers Academy · Réponses**

---

## 1. Linux

Linux est un système d'exploitation libre et open source, de type Unix. Il est utilisé massivement sur les serveurs, dans le cloud, les conteneurs et les systèmes embarqués.

- **Noyau (kernel)** : le cœur du système. Il gère le matériel (CPU, mémoire, disques, réseau), les processus et les droits d'accès. Il fait le lien entre les logiciels et le matériel.
- **Distribution** : un ensemble complet construit autour du noyau Linux : outils système, gestionnaire de paquets, environnement de bureau éventuel, configuration par défaut et mises à jour.
- **Terminal** : une application qui permet de saisir des commandes.
## 2. Système de fichiers

Sous Linux, tout est organisé en un seul arbre qui part de la racine.

- `/` : la **racine** du système, point de départ de toute l'arborescence.
- `/home` : contient les **dossiers personnels**.
- `/etc` : les **fichiers de configuration** du système et des services.
- `/var/log` : les **journaux (logs)** du système et des applications, utiles pour diagnostiquer les problèmes.
- `/tmp` : les **fichiers temporaires**, souvent vidés au redémarrage et accessibles à tous les utilisateurs.

## 3. Navigation

- `pwd` : affiche le répertoire courant (*print working directory*).
- `ls -la` : liste tous les fichiers, y compris cachés (`-a`), au format détaillé (`-l`) : permissions, propriétaire, groupe, taille, date.
- `cd ..` : remonte d'un niveau vers le répertoire parent.
- `cd ~` : va directement dans le dossier personnel de l'utilisateur.

**Exemple :**

```bash
pwd              # /home/silaure/projets/app
cd ..            # on remonte dans /home/silaure/projets
ls -la           # on liste le contenu en détail
cd ~             # retour dans /home/silaure
```

## 4. Manipulation des fichiers

- `touch fichier` : crée un fichier vide, ou met à jour sa date de modification s'il existe.
- `mkdir -p a/b/c` : crée un dossier, y compris tous les dossiers parents manquants, sans erreur s'il existe déjà.
- `cp src dest` : copie un fichier (`cp -r` pour un dossier).
- `mv src dest` : déplace ou renomme un fichier ou un dossier.
- `rm fichier` : supprime un fichier (`rm -r` pour un dossier).

**Précaution avec `rm`** : la suppression est définitive (pas de corbeille). Il faut vérifier le chemin avant d'exécuter la commande, utiliser `rm -i` pour demander confirmation, et être particulièrement prudent avec `rm -rf`, surtout combiné avec des jokers (`*`) ou `sudo`. Une erreur comme `rm -rf /` ou `rm -rf ~` peut détruire le système ou toutes les données personnelles.

## 5. Visualisation

`cat`  Affiche tout le fichier d'un coup 
`less`  Affiche page par page, avec défilement et recherche 
`head`  Affiche les premières lignes (10 par défaut) `tail -n 10`  Affiche les 10 dernières lignes 

## 6. Recherche / pipes

- `grep motif fichier` : recherche les lignes qui contiennent un motif (options utiles : `-i` ignorer la casse, `-r` récursif, `-n` numéros de ligne).
- `|` (pipe) : envoie la sortie d'une commande en entrée de la suivante, ce qui permet de les chaîner.
- `>` : redirige la sortie vers un fichier en l'**écrasant**.
- `>>` : redirige la sortie vers un fichier en **ajoutant** à la fin.

**Compter les lignes contenant `ERROR` :**

```bash
grep "ERROR" app.log | wc -l

## 7. Permissions

- `r` (read) : lire un fichier / lister un dossier.
- `w` (write) : modifier un fichier / créer ou supprimer des éléments dans un dossier.
- `x` (execute) : exécuter un fichier / traverser (entrer dans) un dossier.

**Pourquoi éviter `chmod 777` ?** Cette commande donne lecture, écriture et exécution à **tout le monde**. N'importe quel utilisateur ou processus peut alors modifier ou exécuter le fichier, ce qui crée un risque de sécurité (modification malveillante, élévation de privilèges).
## 8. Utilisateurs

- **Utilisateur normal** : droits limités à ses propres fichiers ; il ne peut pas modifier le système.
- **`root`** : super-utilisateur avec tous les droits, sans restriction. Une erreur peut casser tout le système.
- **`sudo`** : commande qui permet à un utilisateur autorisé d'exécuter **ponctuellement** une commande avec les droits de root, en s'authentifiant, et en laissant une trace dans les logs.

**Principe du moindre privilège** : chaque utilisateur ou programme ne reçoit que les droits strictement nécessaires à sa tâche. Cela limite les dégâts en cas d'erreur humaine, de logiciel compromis ou de compte piraté, et facilite l'audit. C'est pourquoi on travaille en utilisateur normal et on utilise `sudo` seulement quand c'est indispensable, plutôt que de se connecter en root.

## 9. Surveillance

- **`ps aux`** : liste tous les processus en cours, avec l'utilisateur, le PID, le % CPU, le % mémoire, l'état, l'heure de lancement et la commande. Utile pour retrouver un processus précis (`ps aux | grep nginx`).
- **`top`** : vue **dynamique** en temps réel : charge moyenne du système, nombre de processus, utilisation CPU et mémoire, et processus classés par consommation (`q` pour quitter).
- **`df -h`** : espace disque par système de fichiers (taille, utilisé, disponible, % d'occupation, point de montage), en unités lisibles (`-h`).
- **`free -h`** : utilisation de la mémoire RAM et du swap (total, utilisé, libre, cache/disponible), en unités lisibles.
- **`uname -r`** : affiche la version du **noyau Linux** en cours d'exécution.

## 10. Bash et DevOps

Un **script Bash** est un fichier texte contenant une suite de commandes shell, exécutées dans l'ordre. Il peut aussi utiliser des variables, des conditions, des boucles et des fonctions, ce qui permet d'automatiser des tâches répétitives.

**Shebang** : première ligne du script. Elle indique au système quel interpréteur utiliser pour l'exécuter. Avec `env`, Bash est recherché dans le `PATH` de l'utilisateur, ce qui rend le script plus portable d'une machine à l'autre (Bash n'est pas toujours dans `/bin/bash`).

**Deux tâches DevOps automatisables :**

1. **Sauvegardes** : compresser et copier régulièrement des données ou des bases vers un autre emplacement .
2. **Déploiement / maintenance** : récupérer le code, installer les dépendances, redémarrer un service, ou encore nettoyer les anciens logs et vérifier l'espace disque.
