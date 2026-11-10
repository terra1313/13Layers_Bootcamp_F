# F02 — Travaux pratiques et réponses attendues

**Avant de commencer :** terminez le cours OpenClassrooms [« Initiez-vous à Linux »](https://openclassrooms.com/fr/courses/7170491-initiez-vous-a-linux) et joignez les captures de **tous les quiz au vert et du cours terminé**.

Travaillez **en local**, jamais sur un serveur de production. Pour chaque exercice, consignez les commandes et résultats dans `devoirs/prenom-nom/RAPPORT_TP.md`. Répondez aux questions de réflexion **à la suite de chaque TP**.

## TP1 — Navigation et arborescence (7 pts)
Créez localement `~/13layers-f02/` et les sous-dossiers `projets/`, `logs/` et `scripts/`. Montrez le chemin courant et la liste détaillée. **Questions :** à quoi servent `pwd`, `ls -la` et `mkdir -p` ? Quelle différence entre un chemin absolu et relatif ?

## TP2 — Fichiers (7 pts)
Créez `projets/notes.txt` contenant trois lignes, copiez-le sous `logs/`, renommez la copie en `notes-archive.txt` et affichez-la. **Questions :** quelle différence entre `cp` et `mv` ? Comment vérifier que l'original existe toujours ?

## TP3 — Recherche et redirections (7 pts)
Dans `logs/app.log`, saisissez deux lignes `ERROR`, deux `INFO` et une `WARN`. Affichez les lignes `ERROR` avec `grep`, comptez-les avec `| wc -l`, puis expérimentez `>` et `>>` dans un fichier de test. **Questions :** que fait le pipe `|` ? En quoi `>` est-il différent de `>>` ?

## TP4 — Permissions (7 pts)
Créez `scripts/demo.sh` qui affiche `Bonjour 13Layers`. Montrez ses droits avant et après `chmod u+x`, puis exécutez-le. **Questions :** expliquez les droits `rwx` et pourquoi `chmod 777` n'est pas une pratique recommandée.
|
## TP5 — Diagnostic Linux (7 pts)
Exécutez `whoami`, `uname -r`, `df -h`, `free -h` et `ps aux | head`. Donnez une interprétation courte de chaque résultat, sans publier d'informations privées. **Questions :** comment examiner disque, mémoire et processus ?

## TP6 — Premier script Bash (10 pts)
Créez `scripts/system_info.sh` avec `#!/usr/bin/env bash` et `set -euo pipefail`. Il affiche date, utilisateur, répertoire courant, version du noyau et espace disque. Rendez-le exécutable puis testez-le. **Questions :** pourquoi ajouter le shebang ? Qu'est-ce que l'automatisation apporte en DevOps ?

## Qualité et preuves (15 pts)
- Lisibilité des commandes, rapports et fichiers : **5 points**
- Cours terminé, captures des **3 quiz verts**, et bilan : **10 points**

Avec les 10 questions du catalogue (40 pts), les 6 TP (45 pts) et les 15 points ci-dessus, l'évaluation atteint **100 points**.
