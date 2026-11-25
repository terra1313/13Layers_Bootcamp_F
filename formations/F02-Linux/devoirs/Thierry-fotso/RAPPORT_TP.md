# F02 — Travaux pratiques et réponses attendues

## TP1 
**commandes**
bash
cd ~
sudo mkdir /13layers-f02/{projets,logs,scripts}
cd ~/13layers-f02
pwd
ls -la

*resultats*
total 20
drwxr-xr-x  5 root      root       4096 nov 12 17:18 .
drwxr-x---  17 vboxuser vboxuser   4096 nov 12 17:18 ..
drwxr-xr-x  2 root      root       4096 nov 12 17:18 logs
drwxr-xr-x  2 root      root       4096 nov 12 17:18 projets
drwxr-xr-x  2 root      root       4096 nov 12 17:18 scripts

*Questions de réflexion*
  À quoi servent ces differentes commandes?
     'pwd' : Affiche le chemin absolu du répertoire dans lequel on se trouve.
     'ls -la' : Liste tous les fichiers et dossiers (y compris les fichiers cachés) avec leurs détails (permissions, propriétaire, taille, date).
     'mkdir -p' : Crée un répertoire et ses sous-répertoires parents s'ils n'existent pas, sans renvoyer d'erreur.

   Quelle différence entre un chemin absolu et relatif ?
     *Chemin absolu* : Part toujours de la racine `/` du système. Il est valide peu importe le dossier où l'on se trouve.
    *Chemin relatif* : Part du répertoire courant. Sa validité dépend de l'emplacement actuel.

## TP2 — Fichiers (7 pts)
    COMMANDES:
echo -e "Ligne 1\nLigne 2\nLigne 3" > projets/notes.txt
cp projets/notes.txt logs/
mv logs/notes.txt logs/notes-archive.txt
cat logs/notes-archive.txt
ls projets/
    RESULTAT:
text
Ligne 1
Ligne 2
Ligne 3
notes.txt
   DIFFERENCE ENTRE cp et mv
   'cp' duplique et l'original reste tandis que 'mv' déplace/renomme et fait disparaitre l'original
   - Vérifier l'original : 'ls projets/' affiche 'notes.txt', prouvant qu'il n'a pas été supprimé.

## TP3 — Recherche et redirections (7 pts)

    commandes
echo -e "ERROR: Problème A\nERROR: Problème B\nINFO: Tout va bien\nINFO: Démarrage\nWARN: Attention" > logs/app.log
grep "ERROR" logs/app.log
grep "ERROR" logs/app.log | wc -l
echo " ligne test 1" > test.txt
echo " ligne test 2" >> test.txt
cat test.txt    
    questions
'Pipe `|`  Redirige la sortie d'une commande vers l'entrée d'une autre en l'occurence  `grep` vers `wc -l`
 -'`>` vs `>>`':  `>` écrase le contenu. `>>` ajoute à la fin sans effacer.    

## TP4 — Permissions (7 pts)
Créez `scripts/demo.sh` qui affiche `Bonjour 13Layers`. Montrez ses droits avant et après `chmod u+x`, puis exécutez-le. **Questions :** expliquez les droits `rwx` et pourquoi `chmod 777` n'est pas une pratique recommandée.

   Commandes
echo 'echo "Bonjour 13Layers"' > scripts/demo.sh
ls -l scripts/demo.sh
chmod u+x scripts/demo.sh
ls -l scripts/demo.sh
./scripts/demo.sh

Résultats 

-rw-r--r-- 1 THIERRY-FOTSO THIERRY-FOTSO 14 NOV 26 19:54 scripts/demo.sh
-rwxr--r-- 1 THIERRY-FOTSO THIERRY-FOTSO 14 NOV 26 19:54 scripts/demo.sh
Bonjour 13Layers

Questions:
- 'rwx' : `r` (lire), `w` (écrire), `x` (exécuter).
- 'chmod 777' Donne tous les droits à tout le monde. C'est une faille de sécurité majeure.

## TP5 — Diagnostic Linux (7 pts)##

Commandes 
whoami
uname -r
df -h
free -h
ps aux | head

Résultats :

THIERRY-FOTSO
6.8.0-45-generic
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           1.3G  2.1M  1.6G   1% /run
/dev/nvme0n1p2  417G  120G  325G  27% /
tmpfs           8.2G   50M  8.1G   2% /dev/shm
tmpfs           5.0M  4.0K  6.0M   2% /run/lock
/dev/nvme0n1p1  851M  6.1M  505M   4% /boot/efi
               total        used        free      shared  buff/cache   available
Mem:            15Gi       3.2Gi       5.1Gi       201Mi       7.2Gi        11Gi
Swap:          2.0Gi          0B       2.0Gi
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.1 167436 11820 ?        Ss   08:00   0:02 /sbin/init splash
root           2  0.0  0.0      0     0 ?        S    08:00   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        I<   08:00   0:00 [rcu_gp]
root           4  0.0  0.0      0     0 ?        I<   08:00   0:00 [rcu_par_gp]
```
Questions
- Disque: `df -h` affiche l'espace lisible 
- Mémoire: `free -h` affiche la RAM libre et utilisée.
- Processus: `ps aux` liste les programmes en cours, | head` limite l'affichage aux 10 premières lignes.

## TP6 — Premier script Bash (10 pts)
-Créer le script

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
EOF

-Rendre le script exécutable et le tester

chmod u+x scripts/system_info.sh
./scripts/system_info.sh

 Questions de réflexion

-  ajouter le shebang '#!/usr/bin/env bash'  indique au système d'utiliser Bash pour interpréter le script lorsqu'on le lance directement. `/usr/bin/env` recherche la commande `bash` dans les chemins définis par l'environnement.
- **À quoi sert `set -euo pipefail` ?**
  - `-e` demande au script de s'arrêter lorsqu'une commande échoue dans les cas couverts par cette option.
  - `-u` fait traiter l'utilisation d'une variable non définie comme une erreur.
  - `pipefail` permet à un pipeline d'échouer si une commande du pipeline échoue, plutôt que de ne considérer que la dernière commande.
  Ces options rendent les erreurs plus visibles, mais elles ne remplacent pas une gestion des erreurs réfléchie.

- **Qu'apporte l'automatisation en DevOps ?**
    Elle réduit les tâches répétitives, fait gagner du temps, rend les opérations plus reproductibles et limite certaines erreurs humaines. Les scripts peuvent notamment automatiser des sauvegardes, des vérifications système, des tests et des étapes de déploiement.
