# RAPPORT TP — F02 Linux

**Nom :** `SILAURE SIEGNING`
**Date :** 09/11/2024
**Environnement :** (en local / WSL )

---

## 0. Preuves du cours OpenClassrooms

Cours : [Initiez-vous à Linux](https://openclassrooms.com/fr/courses/7170491-initiez-vous-a-linux)

**Cours terminé**

![Capture : cours terminé à 100 %](captures/cours_termine.png)

**Quiz 1 (vert)**

![Capture : quiz 1](captures/quiz1.png)

**Quiz 2 (vert)**

![Capture : quiz 2](captures/quiz2.png)

**Quiz 3 (vert)**

![Capture : quiz 3](captures/quiz3.png)

---

## TP1 — Navigation et arborescence

### Commandes
```bash
mkdir -p ~/13layers-f02/{projets,logs,scripts}
cd ~/13layers-f02
pwd
ls -la
```

### Résultat
```silaure@LUORIDE:~$ mkdir -p ~/13layers-f02/{projet,logs,scripts}
silaure@LUORIDE:~$ cd ~/13layers-f02
silaure@LUORIDE:~/13layers-f02$ pwd
/home/silaure/13layers-f02
silaure@LUORIDE:~/13layers-f02$ ls -la
total 20
drwxr-xr-x 5 silaure silaure 4096 Nov  9 00:25 .
drwxr-x--- 5 silaure silaure 4096 Nov  9 00:25 ..
drwxr-xr-x 2 silaure silaure 4096 Nov  9 00:25 logs
drwxr-xr-x 2 silaure silaure 4096 Nov  9 00:25 projet
drwxr-xr-x 2 silaure silaure 4096 Nov  9 00:25 scripts
silaure@LUORIDE:~/13layers-f02$

### Capture
![Capture TP1](captures/tp1.png)

### Questions
- **À quoi servent `pwd`, `ls -la` et `mkdir -p` ?**
  `pwd` affiche le chemin du répertoire courant. `ls -la` liste en détail (`-l`) tous les fichiers, cachés inclus (`-a`), avec droits, propriétaire, taille et date. `mkdir -p` crée un dossier et ses parents manquants, sans erreur s'il existe déjà.
- **Chemin absolu vs relatif ?**
  Un chemin absolu part de la racine `/` (ex. `/home/user/13layers-f02/logs`) et fonctionne depuis n'importe où. Un chemin relatif part du répertoire courant (ex. `logs/` ou `../projets`) et dépend de l'endroit où l'on se trouve.

---

## TP2 — Fichiers

### Commandes
```bash
cd ~/13layers-f02
printf "Ligne 1\nLigne 2\nLigne 3\n" > projets/notes.txt
cp projets/notes.txt logs/
mv logs/notes.txt logs/notes-archive.txt
cat logs/notes-archive.txt
ls projets/
```

### Résultat
```text
(silaure@LUORIDE:~/13layers-f02$ cd ..
silaure@LUORIDE:~$ cd ~/13layers-f02
silaure@LUORIDE:~/13layers-f02$ printf "Ligne 1\nLignes 2\nLigne 3\n"
Ligne 1
Lignes 2
Ligne 3
silaure@LUORIDE:~/13layers-f02$ >projets/notes.txt
-bash: projets/notes.txt: No such file or directory
silaure@LUORIDE:~/13layers-f02$ >projets
silaure@LUORIDE:~/13layers-f02$ >projet/notes.txt
silaure@LUORIDE:~/13layers-f02$ cp projet/notes.txt logs/
silaure@LUORIDE:~/13layers-f02$ mv logs/notes.txt logs/notes-archives.txt
silaure@LUORIDE:~/13layers-f02$ cat logs/notes-archives.txt
silaure@LUORIDE:~/13layers-f02$ ls projet/
notes.txt)
```

### Capture
![Capture TP2](captures/tp2.png)

### Questions
- **Différence entre `cp` et `mv` ?**
  `cp` copie : l'original reste et un second fichier est créé. `mv` déplace ou renomme : plus rien à l'emplacement d'origine.
- **Comment vérifier que l'original existe toujours ?**
  Avec `ls projets/` ou `cat projets/notes.txt`.

---

## TP3 — Recherche et redirections

### Commandes
```bash
cd ~/13layers-f02
cat > logs/app.log << 'EOF'
ERROR Connexion base de données échouée
INFO Démarrage du service
ERROR Timeout sur l'API
INFO Requête traitée
WARN Espace disque faible
EOF

grep "ERROR" logs/app.log
grep "ERROR" logs/app.log | wc -l

echo "premier" > logs/test.txt
echo "deuxième" >> logs/test.txt
cat logs/test.txt
```

### Résultat
```text
(silaure@LUORIDE:~/13layers-f02$ grep "ERROR" logs/app.log
ERROR Connexion base de données échouée
ERROR Timeout sur l'API
silaure@LUORIDE:~/13layers-f02$ grep "ERROR" logs/app.log | wc -l
2
silaure@LUORIDE:~/13layers-f02$ echo "premier" > logs/test.txt
silaure@LUORIDE:~/13layers-f02$ echo "deuxième" >> logs/test.txt
silaure@LUORIDE:~/13layers-f02$ cat logs/test.txt
premier
deuxième)
```

### Capture
![Capture TP3](captures/tp3.png)

### Questions
- **Que fait le pipe `|` ?**
  Il envoie la sortie standard d'une commande comme entrée de la suivante (ici `grep` filtre, `wc -l` compte les lignes).
- **Différence entre `>` et `>>` ?**
  `>` écrase le contenu du fichier (ou le crée) ; `>>` ajoute à la fin sans effacer.

---

## TP4 — Permissions

### Commandes
```bash
cd ~/13layers-f02
cat > scripts/demo.sh << 'EOF'
#!/usr/bin/env bash
echo "Bonjour 13Layers"
EOF

ls -l scripts/demo.sh
chmod u+x scripts/demo.sh
ls -l scripts/demo.sh
./scripts/demo.sh
```

### Résultat
```text
Avant :  (silaure@LUORIDE:~/13layers-f02$ cat > scripts/demo.sh << 'EOF'
> #!/usr/bin/env bash
> echo "Bonjour 13Layers"
> EOF
silaure@LUORIDE:~/13layers-f02$
silaure@LUORIDE:~/13layers-f02$ ls -l scripts/demo.sh
-rw-r--r-- 1 silaure silaure 44 Nov  9 01:14 scripts/demo.sh)
Après :  (ilaure@LUORIDE:~/13layers-f02$ chmod u+x scripts/demo.sh
silaure@LUORIDE:~/13layers-f02$ ls -l scripts/demo.sh
-rwxr--r-- 1 silaure silaure 44 Nov  9 01:14 scripts/demo.sh)
Exécution : (silaure@LUORIDE:~/13layers-f02$ ./scripts/demo.sh
Bonjour 13Layers)
```

### Capture
![Capture TP4](captures/tp4.png)

### Questions
- **Droits `rwx` ?**
  `r` = lecture (4), `w` = écriture (2), `x` = exécution (1), pour trois groupes : propriétaire (**u**), groupe (**g**) et autres (**o**).
- **Pourquoi `chmod 777` est déconseillé ?**
  Il donne lecture, écriture et exécution à tout le monde : n'importe quel utilisateur ou processus peut modifier ou exécuter le fichier. C'est un risque de sécurité et contraire au principe du moindre privilège. On préfère des droits ciblés (`u+x`, `750`…).

---

## TP5 — Diagnostic Linux

### Commandes
```bash
whoami
uname -r
df -h
free -h
ps aux | head
```

### Résultat
> ⚠️ Masquer nom d'utilisateur, nom de machine, IP et chemins personnels avant publication.

```text
(= whoami ==
USER
== uname -r ==
6.18.54.1-microsoft-standard-WSL2
== df -h ==
Filesystem      Size  Used Avail Use% Mounted on
none            3.4G     0  3.4G   0% /usr/lib/modules/6.18.54.1-microsoft-standard-WSL2
/dev/sdb         97M   97M     0 100% /usr/lib/linux-tools/6.18.54.1-microsoft-standard-WSL2
none            3.4G  4.0K  3.4G   1% /mnt/wsl
drivers         139G  103G   36G  75% /usr/lib/wsl/drivers
/dev/sdd       1007G  1.3G  955G   1% /
none            3.4G   36K  3.4G   1% /mnt/wslg
none            3.4G     0  3.4G   0% /usr/lib/wsl/lib
rootfs          3.4G  3.4M  3.4G   1% /init
none            3.4G  512K  3.4G   1% /run
none            3.4G     0  3.4G   0% /run/lock
none            3.4G     0  3.4G   0% /run/shm
none            3.4G  100K  3.4G   1% /mnt/wslg/versions.txt
none            3.4G  100K  3.4G   1% /mnt/wslg/doc
C:\             139G  103G   36G  75% /mnt/c
D:\              99G   96M   99G   1% /mnt/d
tmpfs           3.4G     0  3.4G   0% /tmp
none            1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
none            1.0M     0  1.0M   0% /run/credentials/systemd-resolved.service
none            1.0M     0  1.0M   0% /run/credentials/getty@tty1.service
tmpfs           688M   12K  688M   1% /run/user/1000
== free -h ==
               total        used        free      shared  buff/cache   available
Mem:           6.7Gi       526Mi       6.1Gi       4.1Mi       210Mi       6.2Gi
Swap:          2.0Gi          0B       2.0Gi
== ps aux | head ==
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.1  0.2  24272 15380 ?        Ss   01:23   0:01 /sbin/init
root           2  0.0  0.0   3804  2504 hvc0     Sl+  01:23   0:00 /init
root           3  0.0  0.0   3664  2140 hvc0     S+   01:23   0:00 init-watcher
root           8  0.0  0.0   3804  2272 hvc0     Sl+  01:23   0:00 plan9 --control-socket 7 --log-level 4 --server-fd 8 --pipe-fd 10 --log-truncate
root          51  0.0  0.2  50672 18136 ?        S<s  01:23   0:00 /usr/lib/systemd/systemd-journald
systemd+      83  0.0  0.2  22416 14448 ?        Ss   01:23   0:00 /usr/lib/systemd/systemd-resolved
root          93  0.0  0.1  34820 12084 ?        Ss   01:23   0:00 /usr/lib/systemd/systemd-udevd
root         116  0.0  0.0   2888  1960 ?        Ss   01:23   0:00 /bin/sh /usr/lib/systemd/scripts/chronyd-starter.sh -n -F 1
root         122  0.0  0.0   4472  3048 ?        Ss   01:23   0:00 /usr/sbin/cron -f -P
silaure@LUORIDE:~$
)
```

### Capture
![Capture TP5](captures/tp5.png)

### Interprétation
- **`whoami`** : (compte utilisé)
- **`uname -r`** : (version du noyau)
- **`df -h`** : (partition la plus remplie, valeur de `Use%`)
- **`free -h`** : (mémoire totale / utilisée / disponible)
- **`ps aux | head`** : (premiers processus, ex. systemd/init en PID 1)

### Question
- **Comment examiner disque, mémoire et processus ?**
  Disque : `df -h` (et `du -sh` pour un dossier). Mémoire : `free -h`. Processus : `ps aux`, ou `top`/`htop` en temps réel.

---

## TP6 — Premier script Bash

### Script `scripts/system_info.sh`
```bash
#!/usr/bin/env bash
set -euo pipefail

echo "Utilisateur : $(whoami)"
echo "Répertoire courant : $(pwd)"
echo "Noyau : $(uname -r)"
echo "Espacecho "Date : $(date)"
e disque :"
df -h /
```

### Commandes
```bash
chmod u+x scripts/system_info.sh
./scripts/system_info.sh
```

### Résultat
```text
(Noyau : 6.18.54.1-microsoft-standard-WSL2
silaure@LUORIDE:~$ echo "Espacecho "Date : $(date)"
> e disque :"
Espacecho Date : Mon Nov 9 01:49:47 WAT 2026
e disque :
silaure@LUORIDE:~$ df -h /
Filesystem      Size  Used Avail Use% Mounted on
/dev/sdd       1007G  1.3G  955G   1% /)
```

### Capture
![Capture TP6](captures/tp6.png)

### Questions
- **Pourquoi ajouter le shebang ?**
  `#!/usr/bin/env bash` indique au système quel interpréteur utiliser et rend le script portable (`env` retrouve `bash` dans le PATH).
- **Rôle de `set -euo pipefail` ?**
  `-e` arrête à la première erreur, `-u` signale les variables non définies, `-o pipefail` détecte les erreurs au milieu d'un pipe.
- **Apport de l'automatisation en DevOps ?**
  Gain de temps, reproductibilité, moins d'erreurs humaines, cohérence entre environnements, base des pipelines CI/CD et de la supervision.

---

## Bilan

- **Ce que j'ai appris :**
**Ce que j'ai appris :** J'ai appris à regrouper plusieurs commandes dans un seul fichier `system_info.sh` pour ne plus les retaper une par une. J'ai aussi compris à quoi sert `chmod u+x` : sans ça, Linux refuse d'exécuter le fichier. Et j'ai vu que `whoami`, `uname -r`, `date` et `df -h` permettent de faire un petit bilan de la machine.
- **Ce qui était difficile :**
 Au début, j'ai collé le contenu du script ligne par ligne directement dans le terminal au lieu de le mettre dans un fichier. Du coup j'avais des erreurs comme `command not found` et un `Espacecho` bizarre à cause d'un guillemet oublié. J'ai aussi galéré avec `sed` pour masquer mon nom, parce que le `/` dans `/home/silaure` cassait la commande.
- **Ce que je referais autrement :**
La prochaine fois, je créerai d'abord le fichier dans VS Code, je vérifierai chaque ligne, et je le testerai avec `./scripts/system_info.sh` avant de copier le résultat dans le rapport. Et je ferais attention aux guillemets et aux `/` dans les commandes.
