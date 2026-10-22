# F02 — Travaux pratiques Linux

**Environnement :** Ubuntu, machine virtuelle, WSL ou une distribution Linux équivalente. Travailler dans son répertoire utilisateur, jamais sur un serveur de production.

## TP1 — Navigation et arborescence (7 points)
Dans `~/13layers-f02`, créez les répertoires `projets`, `logs` et `scripts`. Affichez votre chemin courant avec `pwd` et la liste détaillée avec `ls -la`. Insérez les commandes et les sorties dans votre rapport.

## TP2 — Manipulation de fichiers (7 points)
Créez `projets/notes.txt` avec au moins trois lignes, copiez-le dans `logs/`, renommez la copie en `notes-archive.txt` et affichez son contenu. Expliquez chaque commande.

## TP3 — Recherche et redirections (7 points)
Créez un fichier `logs/app.log` contenant au moins deux lignes `ERROR`, deux `INFO` et une `WARN`. Affichez les lignes `ERROR` avec `grep` puis comptez-les à l'aide d'un pipe `| wc -l`. Illustrez la différence entre `>` et `>>` avec un fichier de test.

## TP4 — Permissions (7 points)
Créez `scripts/demo.sh` qui affiche `Bonjour 13Layers`, utilisez `ls -l` pour montrer les permissions initiales, puis `chmod u+x` pour le rendre exécutable. Exécutez-le et expliquez la différence. **Ne pas utiliser `chmod 777`.**

## TP5 — Diagnostic système (7 points)
Exécutez `whoami`, `uname -r`, `df -h`, `free -h` et `ps aux` (limitez éventuellement la sortie avec `head`). Résumez les résultats sans divulguer de données personnelles.

## TP6 — Script Bash (10 points)
Écrivez `scripts/system_info.sh` avec un shebang et `set -euo pipefail`. Le script doit afficher : date, nom d'utilisateur, répertoire courant, version du noyau et utilisation du disque. Rendez-le exécutable, lancez-le et joignez une sortie d'exemple. Le script doit fonctionner sans privilèges administrateur.

## Présentation des preuves (5 points)
Livrez `RAPPORT_TP.md`, vos scripts sous `scripts/` et des captures facultatives et non sensibles sous `preuves/`. Commandes, sorties et interprétations doivent être lisibles.

## Formation complémentaire et bilan (10 points)
Indiquez le nom et le lien du cours prescrit par le formateur, une preuve de réalisation si disponible, trois acquis, une difficulté rencontrée et votre avis sur le module.

**Barème total : 40 points questionnaire + 35 points TP1–5 + 10 points TP6 + 5 points qualité + 10 points complément/bilan = 100 points.**
