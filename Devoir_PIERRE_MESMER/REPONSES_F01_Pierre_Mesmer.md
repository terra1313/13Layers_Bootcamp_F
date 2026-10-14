# 13Layers Academy — Réponses au Questionnaire F01 : Gérez du code avec Git et GitHub

**Programme :** Roadmap DevOps  
**Module :** F01 — Git & GitHub  
**Organisme :** 13Layers Academy  
**Étudiant :** MOUKOURY MOTTO PIERRE MESMER  
**Fichier :** `REPONSES_F01_Pierre_Mesmer.md`  
**Date :** 14 Octobre 2026  

---

## 1. Informations Générales

- **Nom & Prénom :** MOUKOURY MOTTO PIERRE MESMER
- **Établissement / Formation :** École Nationale Supérieure Polytechnique de Douala (ENSPD) — Reseaux et Telecoms
- **Parcours :** Roadmap DevOps — 13Layers Academy
- **Dépôt de soumission :** `Devoir_PIERRE_MESMER/REPONSES_F01_Pierre_Mesmer.md`

---

## 2. Réponses au Questionnaire

### Question 1 — Qu'est-ce que Git ?

**Définition :**  
Git est systeme de controle de versions décentralisé qui permet aux développeur de conserver un historique des modifications et des versions de tous leurs fichiers.

**Deux avantages majeurs dans un projet informatique :**
1. Revenir à une version precedente du code en cas de probleme
2. Travailler à plusieurs sur un projet sans risquer de supprimer définitivement les modifications des autres.

---

### Question 2 — Qu'est-ce que GitHub ?

**Définition :**  
GitHub est un service en ligne qui va herberger votre dépôt Git dans le cloud.

**Différence essentielle entre Git et GitHub :**
- **Git** est l'outil installé sur notre PC, qui va créer un dépôt local et suivre l'historique de nos fichiers.
- **GitHub** est un service en ligne qui stocke ces dépôts. on parle de dépôt distant.

---

### Question 3 — Qu'est-ce qu'un dépôt Git ?

**Définition d'un dépôt Git :**  
Un dépôt Git est un rcomme dossier qui converse un historique des modofications et dont Git surveille tous les changements (il est stocké dans un dossier caché `.git`).

**Différence entre un dépôt local et un dépôt distant :**
- **Dépôt local :** est un entrepôts virtuel stocké directement sur mon ordinateur. C'est l'espace dans lequel on apporte des modifications, créez des branches, faites des commits et testez votre travail sans impacter l'équipe. Working directory - index/stage - repository
- **Dépôt distant :** Il est stock les differentes versions de notre code de maniere décentralisé c'est-à-dire en ligne.

---

### Question 4 — Les trois commandes fondamentales

1. **`git add`**
   - **Rôle :** Ajoute les fichiers modifiés ou nouveaux de l'espace de travail (*Working Directory*) vers la zone index/stage. Elle permet de sélectionner quelles modifications doit aller dans le prochain commit.
   - **Exemple :**
     ```bash
     # Ajouter un fichier spécifique
     git add comprendreGit.html

     # on peut aussi ajouter tous les fichiers en phase d'indexation.
     git add .
     ```

2. **`git commit`**
   - **Rôle :** Enregistre les modifications et va créer une nouvelle version de notre projet puis faire passer dans repository. Chaque commit crée un instantané unique avec un identifiant SHA, la date, l'auteur et un message descriptif.
   - **Exemple :**
     ```bash
     git commit -m "le document ComprendreGit.html nous permettra de mieux apprehender Git"
     ```

3. **`git push`**
   - **Rôle :** Envoie notre commit sur le dépôt distant (ex. sur GitHub).
   - **Exemple :**
     ```bash
     git push origin main
     ```

---

### Question 5 — Les branches Git

**Qu'est-ce qu'une branche ?**  
Une branche est un espace de développement indépendante et isolée. 

**Pourquoi privilégier une branche dédiée plutôt que de modifier directement `main` ?**
- Pour garantit que la branche principale conserve un code toujours fonctionnel, testé et prêt à être déployé à si les branches secondaires sont inachevés.
- Car Plusieurs membres de l'équipe peuvent développer des fonctionnalités différentes en même temps sans se bloquer mutuellement et sans introduire de code inachevé ou instable sur la branche de principale.

---

### Question 6 — Les commits

**Qu'est-ce qu'un commit ?**  
Un commit est un enregistrement représentant l'état exact des fichiers du projet à un moment t dans l'historique Git.

**Exemple de message de commit professionnel :**
```text
- Ajout du chapitre 3 du cours Git et GitHub
- Correction de la faute dans la définition d'un dépot
- Mise à jour des captures d'écran du chapitre 2
- Ajout du quiz de fin du module F01
```

**Pourquoi un bon message de commit est-il important ?**
1. Car il explique clairement le **pourquoi** et le **quoi** d'un changement, facilitant la lecture de l'historique pour l'ensemble des développeurs de l'équipe .
2. Si quelque casse, un message clair (<< Correction de la formule du chapitre 2>>) permet de repérer le commit responsable, puis de faire **Git revert**

---

### Question 7 — Récupérer les modifications

**Différence entre `git pull` et `git fetch` :**

- **`git fetch` :**Télécharge les nouveautés de GitHub sans toucher à nos fichiers.
- **`git pull` :** Télécharge et fusionne ces nouveautés dans notre branche. On peut dire que : `git pull`=`git fetch + git merge`.

**Situation d'utilisation :**
- **Utiliser `git fetch` :** Quand vous voulez voir ce qui a changé avant de dvcider quoi faire.
- **Utiliser `git pull` :** Quand vous etes sur de vouloir mettre à jour ta branche .

---

### Question 8 — Les Pull Requests

**Qu'est-ce qu'une Pull Request (PR) sur GitHub ?**  
Une Pull Request (PR) est une fonctionalités GitHub qui permet de demander aux propriétaires d'un repository l'autorisation de fusionner nos changements dans la branche cible.

**Utilité dans un projet collaboratif :**
- Permet aux collaborateurs de relire, commenter et proposer des améliorations sur le code proposé.
- Tu évites de modifier des fichiers qui sont déja changé par quelqu'un d'autre.

**Grandes étapes de création d'une Pull Request :**
1. Pousser la branche de travail vers le dépôt distant : `git push origin PIERRE_MESMER_DevOps`.
2. Accéder au dépôt du projet sur GitHub.
3. camparer les changements en cliquant sur **"Compare & pull request"**.
4. Rédiger un titre simple et une description clair expliquant le contexte et les modifications apportées.
5. Assigner des réviseurs, ajouter des étiquettes et soumettre la Pull Request.

---

### Question 9 — Résolution des conflits

**Qu'est-ce qu'un conflit Git ?**  
Un conflit apparait quand deux branches modifient la meme partie du meme fichier et que Git ne sait pas laquelle chosir.

**Situation d'apparition d'un conflit :**  
Deux développeurs, Alice et Bob, partent du même commit sur `main`. Alice modifie la ligne 12 du fichier `config.json` pour définir `"debug": true` et fusionne sa branche sur `main`. Bob modifie également la ligne 12 de `config.json` sur sa branche pour écrire `"debug": false`. Lorsque Bob tente d'intégrer `main` sur sa branche, Git interrompt la fusion et signale un conflit sur `config.json`.

**Étapes de résolution :**
1. premierement, on repere les fichiers en conflit avec `git status`.
2. On ouvre le fichier dans son éditeur (VS Code, Vim, etc.) et choisir : garder ta version, autre, ou un mélange des deux
   ```text
   <<<<<<< HEAD (votre version)
   "debug": false
   =======
   "debug": true
   >>>>>>> main (version entrante)
   ```
3. Choisir la bonne valeur (ou combiner les deux) et supprimer les marqueurs par Git (`<<<<<<<`, `=======`, `>>>>>>>`).
4. **Valider la résolution :**
   ```bash
   git add comprendreGit.js
   git commit -m "fix: résoudre le conflit de configuration debug"
   git push
   ```

---

### Question 10 — Mise en pratique

Voici le déroulé séquentiel des étapes et des commandes pour accomplir la tâche :

1. **Récupérer le projet :**
   Ici nous allons cloner le dépôt du projet DevOps depuis GitHub et se placer dans le répertoire du projet.
   ```bash
   git clone "url du dépôt"
   ```

2. **Créer une branche personnelle :**
   Créer et basculer sur votre nouvelle branche (ex. `MonProfil`).
   ```bash
   git branch MonProfil
   git checkout MonProfil
   ```

3. **Créer et modifier le fichier :**
   Créer le fichier `presentation.md` et ajouter son contenu de présentation.
   ```bash
   touch presentation.md
   echo "Bonjour à tous, je m'appelle Pierre Mesmer, étudiant en 4éme année d'ingénieur en Réseaux & Télécommunications à l'ENSPD. Je suis cette formation DevOps pour apprendre à travailler comme en entreprise et mon objectif est de maitriser les outils DevOps pour devenir Ingenieur CLOUD." >> presentation.md
   ```

4. **Préparer et enregistrer les modifications :**
   indexer le fichier puis créer un commit local.
   ```bash
   git add presentation.md
   git commit -m "ajout du fichier de ma présentation"
   ```

5. **Envoyer la branche sur GitHub :**
   Pousser la nouvelle branche sur le dépôt distant.
   ```bash
   git push -u origin PIERRE_MESMER_DevOps
   ```

6. **Créer une Pull Request :**
   - Aller sur l'interface web du dépôt distant sur GitHub.
   - Cliquer sur le bouton **"Compare & pull request"**.
   - Saisir un titre synthétique (ex. `MonProfil: ajout de la presentation de Mesmer`).
   - Renseigner la description récapitulant les changements.
   - Valider en cliquant sur **"Create Pull Request"**.

---

## 3. Questions de réflexion personnelle

**A. Quel concept Git ou GitHub vous a semblé le plus difficile à comprendre ? Pourquoi ?**  
*Réponse :*  
La resolution des conflits. Je ne comprends pas tres bien la procedure de resolution

**B. Quelle compétence souhaitez-vous améliorer après cette formation ?**  
*Réponse :*  
Je souhaite améliorer la vision que j'ai du DevOps en gerant davantage de projets lié au CLOUD
**C. Comment avez-vous trouvé cette formation ? Qu'avez-vous particulièrement apprécié et que faudrait-il améliorer ?**  
*Réponse :*  
Tres precise et structurée. j'ai tres apprecié la maniere dont on vulgarise les concepts compliqués et je voudrais quà la fin de chaque formation nous faisions un petit challenge avec un temps tres limité pour nous pousser à plus dynamique dans le travail'

---

## 4. Preuve de réalisation de la formation complémentaire

- **Plateforme :** OpenClassrooms  
- **Intitulé du cours :** *Gérez votre code avec Git et GitHub*  
- **Statut :** Complété  
