##Travaux Pratiques (TP1 à TP6)

## TP1 — Navigation et arborescence
**Commandes :**
bash
cd ~
mkdir -p ~/13layers-f02/{projets,logs,scripts}
cd 13layers-f02
pwd
ls -la

**Résultats :**
```text
/home/iram-arnold-nanda-tchaptchet/13layers-f02
total 24
drwxr-xr-x 5 iram-arnold-nanda-tchaptchet iram-arnold-nanda-tchaptchet 4096 Oct 26 12:40 .
drwxr-x--- 15 iram-arnold-nanda-tchaptchet iram-arnold-nanda-tchaptchet 4096 Oct 26 12:40 ..
drwxr-xr-x 2 iram-arnold-nanda-tchaptchet iram-arnold-nanda-tchaptchet 4096 Oct 26 12:40 logs
drwxr-xr-x 2 iram-arnold-nanda-tchaptchet iram-arnold-nanda-tchaptchet 4096 Oct 26 12:40 projets
drwxr-xr-x 2 iram-arnold-nanda-tchaptchet iram-arnold-nanda-tchaptchet 4096 Oct 26 12:40 scripts
```
**Questions / explications :**
- **`pwd`** : Affiche le chemin absolu du dossier courant.
- **`ls -la`** : Liste le contenu, y compris les fichiers cachés (`-a`), avec les détails (`-l`).
- **`mkdir -p`** : Crée un dossier et ses parents s'ils n'existent pas.
- **Absolu vs Relatif** : Absolu part de la racine (`/home/...`). Relatif part du dossier où on se trouve (`cd projets`).

## TP2 — Fichiers
**Commandes :**
```bash
echo -e "Ligne 1\nLigne 2\nLigne 3" > projets/notes.txt
cp projets/notes.txt logs/
mv logs/notes.txt logs/notes-archive.txt
cat logs/notes-archive.txt
ls projets/
```
**Résultats :**
```text
Ligne 1
Ligne 2
Ligne 3
notes.txt
```
**Questions / explications :**
- **`cp` vs `mv`** : `cp` duplique (l'original reste). `mv` déplace/renomme (l'original disparaît).
- **Vérifier l'original** : `ls projets/` affiche `notes.txt`, prouvant qu'il n'a pas été supprimé.

## TP3 — Recherche et redirections
**Commandes :**
```bash
echo -e "ERROR: Problème A\nERROR: Problème B\nINFO: Tout va bien\nINFO: Démarrage\nWARN: Attention" > logs/app.log
grep "ERROR" logs/app.log
grep "ERROR" logs/app.log | wc -l
echo "Première ligne du test" > test.txt
echo "Deuxième ligne du test" >> test.txt
cat test.txt
```
**Résultats :**
```text
ERROR: Problème A
ERROR: Problème B
2
Première ligne du test
Deuxième ligne du test
```
**Questions / explications :**
- **Pipe `|`** : Redirige la sortie d'une commande vers l'entrée d'une autre (ici, `grep` vers `wc -l`).
- **`>` vs `>>`** : `>` écrase le contenu. `>>` ajoute à la fin sans effacer.

## TP4 — Permissions
**Commandes :**
```bash
echo 'echo "Bonjour 13Layers"' > scripts/demo.sh
ls -l scripts/demo.sh
chmod u+x scripts/demo.sh
ls -l scripts/demo.sh
./scripts/demo.sh
```
**Résultats :**
```text
-rw-r--r-- 1 iram-arnold-nanda-tchaptchet iram-arnold-nanda-tchaptchet 24 Oct 26 14:37 scripts/demo.sh
-rwxr--r-- 1 iram-arnold-nanda-tchaptchet iram-arnold-nanda-tchaptchet 24 Oct 26 14:37 scripts/demo.sh
Bonjour 13Layers
```
**Questions / explications :**
- **`rwx`** : `r` (lire), `w` (écrire), `x` (exécuter).
- **`chmod 777`** : Donne tous les droits à tout le monde. C'est une faille de sécurité majeure.

## TP5 — Diagnostic Linux
**Commandes :**
```bash
whoami
uname -r
df -h
free -h
ps aux | head
```
**Résultats :**
```text
iram-arnold-nanda-tchaptchet
6.8.0-45-generic
Filesystem      Size  Used Avail Use% Mounted on
tmpfs           1.6G  2.1M  1.6G   1% /run
/dev/nvme0n1p2  468G  120G  325G  27% /
tmpfs           7.7G   50M  7.7G   1% /dev/shm
tmpfs           5.0M  4.0K  5.0M   1% /run/lock
/dev/nvme0n1p1  511M  6.1M  505M   2% /boot/efi
               total        used        free      shared  buff/cache   available
Mem:            15Gi       3.2Gi       5.1Gi       201Mi       7.2Gi        11Gi
Swap:          2.0Gi          0B       2.0Gi
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.1 167436 11820 ?        Ss   09:00   0:02 /sbin/init splash
root           2  0.0  0.0      0     0 ?        S    09:00   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        I<   09:00   0:00 [rcu_gp]
root           4  0.0  0.0      0     0 ?        I<   09:00   0:00 [rcu_par_gp]
```
**Questions / explications :**
- **Disque** : `df -h` affiche l'espace lisible (en Go).
- **Mémoire** : `free -h` affiche la RAM libre et utilisée.
- **Processus** : `ps aux` liste les programmes en cours, `| head` limite l'affichage aux 10 premières lignes.

## TP6 — Premier script Bash
**Commandes :**
```bash
cat << 'EOF' > scripts/system_info.sh
#!/usr/bin/env bash
set -euo pipefail
echo "Date : $(date)"
echo "Utilisateur : $(whoami)"
echo "Dossier courant : $(pwd)"
echo "Version du noyau : $(uname -r)"
echo "Espace disque :"
df -h /
EOF
chmod +x scripts/system_info.sh
./scripts/system_info.sh
```
**Résultats :**
```text
Date : Sun Oct 26 15:45:28 2026
Utilisateur : iram-arnold-nanda-tchaptchet
Dossier courant : /home/iram-arnold-nanda-tchaptchet/13layers-f02
Version du noyau : 6.8.0-45-generic
Espace disque :
Filesystem      Size  Used Avail Use% Mounted on
/dev/nvme0n1p2  468G  120G  325G  27% /
```
**Questions / explications :**
- **Shebang** : `#!/usr/bin/env bash` indique l'interpréteur à utiliser.
- **Automatisation** : Gain de temps, évite les erreurs humaines, garantit des configurations identiques
