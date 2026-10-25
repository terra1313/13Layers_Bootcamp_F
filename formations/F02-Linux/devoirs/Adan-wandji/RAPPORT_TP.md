# Travaux Pratiques — F02 Linux 

**etudiant :** Wandji Ndjiyou Adan
** version :ubuntu 26.04.1
---
## TP1 — Navigation et arborescence 
* **Commandes :**
  ```bash
  mkdir -p ~/13layers-f02/{projets,logs,scripts}
  cd ~/13layers-f02
  pwd
  ls -la
  ```
* **A quoi servent les commandes ?**
  * `pwd` : Affiche l'emplacement exact où l'on se trouve dans l'ordinateur.
  * `ls -la` : Montre la liste complète des fichiers et dossiers, même les fichiers cachés.
  * `mkdir -p` : Crée plusieurs répertoires d'un coup sans renvoyer d'erreur.
* **Différence chemin absolu / relatif :**
  * **Absolu :** Démarre depuis la racine `/` (ex: `/home/user/13layers-f02/logs`).
  * **Relatif :** Démarre depuis le dossier où vous êtes actuellement (ex: `logs/`).

---

## TP2 — Fichiers
 * **Commandes :**
  ```bash
  cd ~/13layers-f02
  echo -e "Ligne 1\nLigne 2\nLigne 3" > projets/notes.txt
  cp projets/notes.txt logs/
  mv logs/notes.txt logs/notes-archive.txt
  cat logs/notes-archive.txt
  ```
* **Différence `cp` vs `mv` :** `cp` fait un double (le fichier d'origine reste à sa place), alors que `mv` déplace le fichier ou le renomme (le fichier n'est plus à son ancienne place).
* **Vérification :** On utilise `ls projets/notes.txt` pour voir que le fichier d'origine n'a pas bougé.

---

## TP3 — Recherche et redirections 
* **Commandes :**
  ```bash
  cd ~/13layers-f02
  echo -e "ERROR Panne\nERROR Connexion\nINFO OK\nINFO Start\nWARN Attention" > logs/app.log
  grep "ERROR" logs/app.log
  grep "ERROR" logs/app.log | wc -l
  ```
* **Rôle du pipe `|` :** Il sert à relier deux commandes. Le résultat de la première commande est transmis directement à la seconde.
* **Différence `>` vs `>>` :**
  * `>` : Écrase le fichier existant et remplace tout.
  * `>>` : Ajoute la nouvelle ligne à la fin sans rien effacer.

---

## TP4 — Permissions 
* **Commandes :**
  ```bash
  cd ~/13layers-f02
  echo 'echo "Bonjour 13Layers"' > scripts/demo.sh
  chmod u+x scripts/demo.sh
  ./scripts/demo.sh
  ```
* **Explication des droits `rwx` :** `r` = lire, `w` = écrire/modifier, `x` = exécuter.
* **Pourquoi pas `chmod 777` ?** Donner tous les droits à tout le monde est très dangereux pour la sécurité du système.

---

## TP5 — Diagnostic Linux 
* **Commandes exécutées :** `whoami`, `uname -r`, `df -h`, `free -h`, `ps aux | head`.
* **Interprétation :**
  * `whoami` : Donne mon nom d'utilisateur.
  * `uname -r` : Donne le numéro de version du noyau Linux.
  * `df -h` : Indique le stockage restant sur le disque dur.
  * `free -h` : Indique la mémoire RAM libre et utilisée.
  * `ps aux` : Donne la liste des programmes qui tournent sur la machine.

---

## TP6 — Premier script Bash 
* **Fichier `scripts/system_info.sh` :**
  ```bash
  #!/usr/bin/env bash
  set -euo pipefail

  echo "Date : $(date)"
  echo "Utilisateur : $(whoami)"
  echo "Dossier : $(pwd)"
  echo "Noyau : $(uname -r)"
  echo "Disque :"
  df -h /
  ```
* **Execution :** `chmod +x scripts/system_info.sh` puis `./scripts/system_info.sh`.
* **Pourquoi le shebang ?** Il indique au système d'utiliser Bash pour lire le script de façon universelle.
* **Apport de l'automatisation en DevOps ?** Elle permet de gagner du temps, de travailler plus vite et d'éviter les erreurs humaines.