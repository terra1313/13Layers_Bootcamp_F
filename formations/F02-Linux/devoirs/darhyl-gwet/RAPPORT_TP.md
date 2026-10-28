## TP1 — Navigation et arborescence (7 pts)
Créez localement `~/13layers-f02/` et les sous-dossiers `projets/`, `logs/` et `scripts/`. Montrez le chemin courant et la liste détaillée. **Questions :** à quoi servent `pwd`, `ls -la` et `mkdir -p` ? Quelle différence entre un chemin absolu et relatif ?

mkdir -p ~/13layers-f02/projets/ ~/13layers-f02/logs/ ~/13layers-f02/scripts/
commande pour le chemin couran: pwd
commande pour la liste détaillée: ls -la
commande pour créer un dossier parents et ses sous dossiers: mkdir -p
résultat: ~/13layers-f02/
                 projets/
                 logs/
                 scripts/

le chemin absolu indique l'emplacement du dossier ou l'on se trouve depuis la racine alors que le chemin relatif indique juste le dossier dans lequel on se trouve et le précédent


## TP2 — Fichiers (7 pts)
Créez `projets/notes.txt` contenant trois lignes, copiez-le sous `logs/`, renommez la copie en `notes-archive.txt` et affichez-la. **Questions :** quelle différence entre `cp` et `mv` ? Comment vérifier que l'original existe toujours ?

cd projets/
touch notes.txt
echo "Premiere note" > notes.txt
echo "Deuxieme note" >> notes.txt
echo "Troisieme note" >> projets/notes.txt
cp notes.txt ../logs/

cd ..
cd logs/
mv notes.txt notes-archive.txt
cat notes-archives.txt

cp permet de copier un fichier d'un dossier à un autre tandis que mv permet de le renommer ou le déplacer. pour' vérifier l'original on tape ls projrts/


## TP3 — Recherche et redirections (7 pts)
Dans `logs/app.log`, saisissez deux lignes `ERROR`, deux `INFO` et une `WARN`. Affichez les lignes `ERROR` avec `grep`, comptez-les avec `| wc -l`, puis expérimentez `>` et `>>` dans un fichier de test. **Questions :** que fait le pipe `|` ? En quoi `>` est-il différent de `>>` ?

cd logs/
touch app.log
echo "ERROR" > app.log
echo "ERROR" >> app.log
echo "INFO" >> app.log
echo "INFO" >> app.log
echo "WARN" >> app.log
grep "ERROR" app.log
grep "ERROR" app.log | wc -l
| permet de relier plusieurs commandes
> permet d'ecrire du texte au début d'un fichier tandis que >> permet d'écrire à la suite sans supprimer ce qui vient avant


## TP4 — Permissions (7 pts)
Créez `scripts/demo.sh` qui affiche `Bonjour 13Layers`. Montrez ses droits avant et après `chmod u+x`, puis exécutez-le. **Questions :** expliquez les droits `rwx` et pourquoi `chmod 777` n'est pas une pratique recommandée.

cd ..
cd scripts
touch demo.sh
echo "Bonjour 13Layers" > demo.sh
cat demo.sh
ls -l demo.sh
-rw-r--r-- 1 Damson 197121 17 Oct 28 23:24 demo.sh
chmod u+x demo.sh
ls -l demo.sh
-rw-r--r-- 1 Damson 197121 17 Oct 28 23:24 demo.sh
les droits rwx sont respectivement pour lire, écrire et exécuter un fichier
chmod 777 n'est pas recommender car il donne accès aux droits des fichiers à n'importe quel individu

## TP5 — Diagnostic Linux (7 pts)
Exécutez `whoami`, `uname -r`, `df -h`, `free -h` et `ps aux | head`. Donnez une interprétation courte de chaque résultat, sans publier d'informations privées. **Questions :** comment examiner disque, mémoire et processus ?

whoami affiche le nom de l'utilisateur
uname -r affiche la version du noyeau linux
df -h affiche l'utilisation de l'espace de disque
free -h affiche l'utilisation de la mémoire
ps aux | head affiche les actions en cours

## TP6 — Premier script Bash (10 pts)
Créez `scripts/system_info.sh` avec `#!/usr/bin/env bash` et `set -euo pipefail`. Il affiche date, utilisateur, répertoire courant, version du noyau et espace disque. Rendez-le exécutable puis testez-le. **Questions :** pourquoi ajouter le shebang ? Qu'est-ce que l'automatisation apporte en DevOps ?

cd
cd scripts/
touch system_info.sh
code system_info.sh
#!/usr/bin/env bash
set -euo pipefail

echo "=== Informations système ==="
echo "Date :"
echo "Utilisateur :Dawson"
whoami
echo "Répertoire courant :"
echo "Version du noyau :"
uname -r
echo "Espace disque :"
df -h
le shebang indique quel interpréteur doit exécuter le script
l'automatisation permet d'éffectuer des taches répétitives rapidement et de manière cohérente.