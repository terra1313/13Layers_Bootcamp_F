

## TP1 — Navigation et arborescence (7 pts)

### Commandes exécutées


mkdir -p ~/13layers-f02/{projets,logs,scripts}
cd ~/13layers-f02
pwd
ls -la

### Résultats attendus

`pwd` : /home/martin/13layers-f02


`ls -la` affiche les éléments du répertoire, y compris les éléments cachés, avec des informations détaillées. On doit notamment retrouver les répertoires `projets`, `logs` et `scripts`.

### Questions de réflexion

- **À quoi sert `pwd` ?** À afficher le chemin du répertoire courant.
- **À quoi sert `ls -la` ?** À afficher les fichiers et répertoires, y compris les éléments cachés, avec leurs détails comme les permissions, le propriétaire, la taille et la date.
- **À quoi sert `mkdir -p` ?** À créer des répertoires et, si nécessaire, leurs répertoires parents. Si le répertoire existe déjà, la commande ne provoque normalement pas d'erreur.
- **Chemin absolu et chemin relatif :** un chemin absolu part de la racine `/`, par exemple `/home/martin/13layers-f02/projets`. Un chemin relatif est interprété depuis le répertoire courant, par exemple `projets` si je suis dans `~/13layers-f02`.

---

## TP2 — Fichiers (7 pts)

### Commandes exécutées

```
cd ~/13layers-f02
printf 'Première ligne\nDeuxième ligne\nTroisième ligne\n' > projets/notes.txt
cp projets/notes.txt logs/notes.txt
mv logs/notes.txt logs/notes-archive.txt
cat logs/notes-archive.txt
ls -l projets/notes.txt logs/notes-archive.txt
```

### Résultat attendu

Le contenu affiché doit être :

```
Première ligne
Deuxième ligne
Troisième ligne
```

La commande `ls -l` doit montrer que le fichier original `projets/notes.txt` et la copie renommée `logs/notes-archive.txt` existent.

### Questions de réflexion

- **Différence entre `cp` et `mv` :** `cp` crée une copie et conserve l'original. `mv` déplace un élément ou change son nom. Ici, la copie a d'abord été créée dans `logs/`, puis renommée.
- **Comment vérifier que l'original existe toujours ?** Avec `ls -l projets/notes.txt`, ou avec `test -f projets/notes.txt && echo "L'original existe"`.

---

## TP3 — Recherche et redirections (7 pts)

### Commandes exécutées

```
cd ~/13layers-f02
printf 'ERROR: échec de connexion\nINFO: démarrage\nERROR: délai dépassé\nINFO: service prêt\nWARN: espace faible\n' > logs/app.log
grep 'ERROR' logs/app.log
grep 'ERROR' logs/app.log | wc -l
```

### Résultat attendu

`grep 'ERROR' logs/app.log` doit afficher les deux lignes qui contiennent `ERROR`.

`grep 'ERROR' logs/app.log | wc -l` doit afficher :

```
2
```

### Expérience avec `>` et `>>`

```
printf 'Première entrée\n' > logs/test-redirection.txt
printf 'Deuxième entrée\n' >> logs/test-redirection.txt
cat logs/test-redirection.txt
```

Résultat attendu :

```
Première entrée
Deuxième entrée
```

### Questions de réflexion

- **Que fait le pipe `|` ?** Il transmet la sortie standard d'une commande à l'entrée standard de la commande suivante. Ici, les lignes trouvées par `grep` sont transmises à `wc -l`, qui compte les lignes reçues.
- **Différence entre `>` et `>>` :** `>` crée le fichier ou remplace son contenu s'il existe déjà. `>>` crée le fichier si nécessaire ou ajoute le résultat à la fin sans effacer le contenu précédent.

---

## TP4 — Permissions (7 pts)

### Commandes exécutées

```
cd ~/13layers-f02
printf '#!/usr/bin/env bash\necho "Bonjour 13Layers"\n' > scripts/demo.sh
ls -l scripts/demo.sh
chmod u+x scripts/demo.sh
ls -l scripts/demo.sh
./scripts/demo.sh
```

### Résultat attendu

Avant `chmod u+x`, les permissions dépendent des paramètres de création de fichiers de la machine. Le propriétaire n'a normalement pas encore la permission d'exécution ajoutée par cette commande.

Après `chmod u+x`, la permission `x` est ajoutée pour le propriétaire. La sortie de `ls -l` doit donc montrer un `x` dans la première série de permissions, par exemple `-rwxr--r--` (les autres permissions peuvent varier).

L'exécution doit afficher :

```
Bonjour 13Layers
```

### Questions de réflexion

- **`r` :** autorise la lecture d'un fichier ; sur un répertoire, permet de lister son contenu.
- **`w` :** autorise la modification d'un fichier ; sur un répertoire, permet notamment d'y créer, supprimer ou renommer des éléments, sous réserve des autres droits.
- **`x` :** autorise l'exécution d'un fichier exécutable ou d'un script compatible ; sur un répertoire, permet de le traverser.
- **Pourquoi éviter `chmod 777` ?** Cette commande donne lecture, écriture et exécution à tout le monde. D'autres utilisateurs pourraient modifier ou exécuter le fichier sans nécessité. Il vaut mieux accorder uniquement les permissions requises.

---

## TP5 — Diagnostic Linux (7 pts)

### Commandes exécutées

```
whoami
uname -r
df -h
free -h
ps aux | head
```

### Interprétation à compléter avec les résultats de votre machine

- **`whoami` :** affiche le nom de l'utilisateur actuellement connecté. Exemple de forme attendue : `martin`.
- **`uname -r` :** affiche la version du noyau Linux en cours d'exécution. Notez la version effectivement affichée par votre ordinateur.
- **`df -h` :** indique la taille, l'espace utilisé, l'espace disponible et le pourcentage d'utilisation des systèmes de fichiers montés. Repérez la ligne correspondant au système de fichiers qui contient `/`.
- **`free -h` :** présente la mémoire RAM et la mémoire swap, notamment les quantités utilisées et disponibles. Sous Linux, la colonne `available` est souvent plus utile que la seule colonne `free` pour estimer la mémoire disponible.
- **`ps aux | head` :** affiche les premières lignes de la liste des processus. On y voit notamment l'utilisateur, le PID (identifiant du processus), l'utilisation du CPU et de la mémoire, ainsi que la commande lancée. `head` limite l'affichage aux premières lignes.

### Questions de réflexion

- **Examiner le disque :** utiliser `df -h` pour voir l'espace utilisé et disponible.
- **Examiner la mémoire :** utiliser `free -h` pour consulter la RAM et la swap.
- **Examiner les processus :** utiliser `ps aux` pour afficher une liste des processus, ou `top` pour les observer de manière 

---

## TP6 — Premier script Bash (10 pts)

### Créer le script

```
cd ~/13layers-f02
cat > scripts/system_info.sh <<'EOF'
#!/usr/bin/env bash
set -euo pipefail

echo "=== Informations système ==="
printf 'Date : '
date
printf 'Utilisateur : '
whoami
printf 'Répertoire courant : '
pwd
printf 'Version du noyau : '
uname -r
echo "Espace disque :"
df -h
```

### Rendre le script exécutable et le tester

```
chmod u+x scripts/system_info.sh
./scripts/system_info.sh
```

### Résultat attendu

Le script doit afficher la date, l'utilisateur courant, le répertoire courant, la version du noyau et le tableau d'espace disque. Les valeurs exactes dépendent de l'ordinateur ; copiez les résultats réels dans votre rapport.

### Questions de réflexion

- **Pourquoi ajouter le shebang `#!/usr/bin/env bash` ?** Il indique au système d'utiliser Bash pour interpréter le script lorsqu'on le lance directement. `/usr/bin/env` recherche la commande `bash` dans les chemins définis par l'environnement.
- **À quoi sert `set -euo pipefail` ?**
  - `-e` demande au script de s'arrêter lorsqu'une commande échoue dans les cas couverts par cette option.
  - `-u` fait traiter l'utilisation d'une variable non définie comme une erreur.
  - `pipefail` permet à un pipeline d'échouer si une commande du pipeline échoue, plutôt que de ne considérer que la dernière commande.

  Ces options rendent les erreurs plus visibles, mais elles ne remplacent pas une gestion des erreurs réfléchie.
- **Qu'apporte l'automatisation en DevOps ?** Elle réduit les tâches manuelles répétitives, fait gagner du temps, rend les opérations plus reproductibles et limite certaines erreurs humaines. Les scripts peuvent notamment automatiser des sauvegardes, des vérifications système, des tests et des étapes de déploiement.

