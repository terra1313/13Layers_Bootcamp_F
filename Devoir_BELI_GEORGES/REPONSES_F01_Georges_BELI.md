# 13Layers Academy — Réponses au Questionnaire F01 : Fondamentaux Git & GitHub

**Programme :** Roadmap DevOps  
**Module :** F01 — Git & GitHub  
**Organisme :** 13Layers Academy  
**Étudiant :** BELI AKOLEA Georges Valéry  
**Fichier :** `REPONSES_F01_Georges_BELI.md`  
**Date :** 13 Octobre 2026  

---

## 1. Informations Générales

- **Nom & Prénom :** BELI AKOLEA Georges Valéry
- **Établissement / Formation :** École Nationale Supérieure Polytechnique de Douala (ENSPD) — Reseaux et Telecoms
- **Parcours :** Roadmap DevOps — 13Layers Academy
- **Dépôt de soumission :** `Devoir_BELI_GEORGES/REPONSES_F01_Georges_BELI.md`

---

## 2. Réponses au Questionnaire

### Question 1 — Qu'est-ce que Git ?

**Définition :**  
Git est un système de contrôle de version distribué open-source créé par Linus Torvalds en 2005. Il permet de suivre l'historique complet des modifications apportées aux fichiers du code source d'un projet au fil du temps.

**Deux avantages majeurs dans un projet informatique :**
1. **Historique complet, traçabilité et réversibilité :** Git enregistre chaque modification. Cela permet de suivre qui a modifié quoi, à quel moment et pour quelle raison. En cas d'erreur, il est très facile de revenir à une version antérieure stable.
2. **Travail collaboratif:** Plusieurs développeurs peuvent travailler en parallèle sur des fonctionnalités sans risquer d'altérer le code principal. La majorité des opérations de gestion de version s'exécutent localement et sans besoin d'une connexion réseau constante.

---

### Question 2 — Qu'est-ce que GitHub ?

**Définition :**  
GitHub est une plateforme SaaS (Software as a Service) d'hébergement de dépôts Git basée sur le cloud. Elle apporte une interface graphique web conviviale ainsi qu'un ensemble d'outils collaboratifs avancés venant enrichir le fonctionnement de Git.

**Différence essentielle entre Git et GitHub :**
- **Git** est l'outil logiciel en ligne de commande installé localement sur votre ordinateur qui gère le suivi des versions de vos fichiers.
- **GitHub** est un service en ligne distant hébergeant les dépôts Git pour faciliter le partage, la revue de code, le suivi des bugs, et la collaboration en équipe.


---

### Question 3 — Qu'est-ce qu'un dépôt Git ?

**Définition d'un dépôt Git :**  
Un dépôt Git est un répertoire de stockage structuré qui contient tous les fichiers et dossiers d'un projet, accompagné de l'ensemble de l'historique des modifications (stocké dans un dossier caché `.git`).

**Différence entre un dépôt local et un dépôt distant :**
- **Dépôt local :** Il est stocké directement sur mon ordinateur. C'est l'espace dans lequel on apporte des modifications, créez des branches, faites des commits et testez votre travail sans impacter l'équipe.
- **Dépôt distant :** Il est hébergé sur un serveur partagé ou une plateforme cloud (comme GitHub). Il sert de référence centrale pour toute l'équipe. Les développeurs y envoient  leurs contributions et y récupèrent  les dernières évolutions de leurs collègues.

---

### Question 4 — Les trois commandes fondamentales

1. **`git add`**
   - **Rôle :** Ajoute les fichiers modifiés ou nouveaux de l'espace de travail (*Working Directory*) vers la zone de transit (*Stage Area* / Index). Cette étape permet de sélectionner précisément quelles modifications figureront dans le prochain commit.
   - **Exemple :**
     ```bash
     # Ajouter un fichier spécifique
     git add index.html

     # Ou ajouter l'ensemble des fichiers modifiés du répertoire courant
     git add .
     ```

2. **`git commit`**
   - **Rôle :** Enregistre définitivement les modifications contenues dans la zone de transit dans l'historique du dépôt local. Chaque commit crée un instantané unique avec un identifiant SHA, la date, l'auteur et un message descriptif.
   - **Exemple :**
     ```bash
     git commit -m "mon premier commit"
     ```

3. **`git push`**
   - **Rôle :** Envoie et synchronise les commits enregistrés dans le dépôt local vers le dépôt distant (ex. sur GitHub).
   - **Exemple :**
     ```bash
     git push origin main
     ```

---

### Question 5 — Les branches Git

**Qu'est-ce qu'une branche ?**  
Une branche représente une ligne de développement indépendante et isolée. 

**Pourquoi privilégier une branche dédiée plutôt que de modifier directement `main` ?**
- **Stabilité de la branche principale (`main`) :** Cela garantit que la branche principale conserve un code toujours fonctionnel, testé et prêt à être déployé à tout moment.
- **Isolation du travail :** Plusieurs membres de l'équipe peuvent développer des fonctionnalités différentes en même temps sans se bloquer mutuellement et sans introduire de code inachevé ou instable sur la branche de production.

---

### Question 6 — Les commits

**Qu'est-ce qu'un commit ?**  
Un commit est une sauvegarde instantanée, datée, représentant l'état exact des fichiers du projet à un moment précis dans l'historique Git.

**Exemple de message de commit professionnel :**
```text
feat(game): ajout des commandes de touche de direction

- creation des deplacements 
- Intégration sur la map
```

**Pourquoi un bon message de commit est-il important ?**
1. **Compréhension et maintenabilité :** Il explique clairement le **pourquoi** et le **quoi** d'un changement, facilitant la lecture de l'historique pour l'ensemble des développeurs de l'équipe (et pour soi-même dans le futur).
2. **Débogage et traçabilité :** En cas d'anomalie, des messages précis permettent d'identifier rapidement le commit ayant introduit une régression.

---

### Question 7 — Récupérer les modifications

**Différence entre `git pull` et `git fetch` :**

- **`git fetch` :** Récupère les métadonnées, nouveaux commits et branches depuis le dépôt distant vers votre dépôt local, **sans modifier** les fichiers de votre espace de travail actif (*Working Directory*). C'est une action de lecture sûre.
- **`git pull` :** Télécharge les modifications depuis le dépôt distant **ET** effectue immédiatement une fusion (*merge*) ou un rebase dans votre branche locale actuelle. C'est l'équivalent de `git fetch` suivi de `git merge`.

**Situation d'utilisation :**
- **Utiliser `git fetch` :** Quand vous voulez inspecter les changements apportés par vos collègues sur le serveur distant avant de décider d'intégrer ou non ces modifications dans votre travail courant.
- **Utiliser `git pull` :** Quand vous retravaillez sur une branche partagée ou la branche principale et que vous voulez synchroniser directement et rapidement votre espace local avec la dernière version distante réputée stable.

---

### Question 8 — Les Pull Requests

**Qu'est-ce qu'une Pull Request (PR) sur GitHub ?**  
Une Pull Request (PR) est un mécanisme collaboratif sur GitHub permettant à un développeur de notifier les membres de l'équipe qu'il a terminé une fonctionnalité ou un correctif sur une branche et de demander son intégration (*merge*) dans la branche cible.

**Utilité dans un projet collaboratif :**
- **Revue de code :** Permet aux collaborateurs de relire, commenter et proposer des améliorations sur le code proposé.
- **Validation automatique  :** Déclenche l'exécution automatisée des tests unitaires, avant l'intégration.
- **Assurance qualité :** Maintient un niveau élevé de qualité de code et évite les erreurs avant le déploiement.

**Grandes étapes de création d'une PR :**
1. Pousser la branche de travail vers le dépôt distant : `git push origin ma-branche`.
2. Accéder au dépôt du projet sur GitHub.
3. Cliquer sur le bouton **"Compare & pull request"**.
4. Rédiger un titre clair et une description détaillée expliquant le contexte et les modifications apportées.
5. Assigner des réviseurs, ajouter des étiquettes et soumettre la PR.

---

### Question 9 — Résolution des conflits

**Qu'est-ce qu'un conflit Git ?**  
Un conflit survient lorsque Git est incapable de fusionner automatiquement deux branches parce que des modifications incompatibles ont été apportées aux mêmes lignes d'un même fichier dans les deux branches distinctes, ou parce qu'un fichier a été supprimé dans une branche et modifié dans l'autre.

**Situation d'apparition d'un conflit :**  
Deux développeurs, Alice et Bob, partent du même commit sur `main`. Alice modifie la ligne 12 du fichier `config.json` pour définir `"debug": true` et fusionne sa branche sur `main`. Bob modifie également la ligne 12 de `config.json` sur sa branche pour écrire `"debug": false`. Lorsque Bob tente d'intégrer `main` sur sa branche, Git interrompt la fusion et signale un conflit sur `config.json`.

**Étapes de résolution :**
1. **Identifier les conflits :** Lancer la commande `git status` pour voir la liste des fichiers marqués comme *unmerged*.
2. **Inspecter le fichier en conflit :** Ouvrir le fichier dans son éditeur (VS Code, Vim, etc.). Git marque les zones litigieuses avec des balises :
   ```text
   <<<<<<< HEAD (votre version)
   "debug": false
   =======
   "debug": true
   >>>>>>> main (version entrante)
   ```
3. **Résoudre le conflit :** Choisir la bonne valeur (ou combiner les deux) et supprimer l'ensemble des balises insérées par Git (`<<<<<<<`, `=======`, `>>>>>>>`).
4. **Valider la résolution :**
   ```bash
   git add config.json
   git commit -m "fix: résoudre le conflit de configuration debug"
   git push
   ```

---

### Question 10 — Mise en pratique

Voici le déroulé séquentiel des étapes et des commandes pour accomplir la tâche :

1. **Récupérer le projet :**
   Cloner le dépôt officiel depuis GitHub et se placer dans le répertoire du projet.
   ```bash
   git clone "url du depot"
   ```

2. **Créer une branche personnelle :**
   Créer et basculer sur une nouvelle branche dédiée (ex. `presentation-georges-beli`).
   ```bash
   git checkout -b presentation-georges-beli
   ```
   *(Rôle : Crée la branche et bascule dessus en une seule commande).*

3. **Créer et modifier le fichier :**
   Créer le fichier `presentation.md` et ajouter son contenu de présentation.
   ```bash
   echo "# Présentation" > presentation.md
   echo "Bonjour, je suis BELI AKOLEA Georges Valéry, étudiant ingénieur en Réseaux & Télécommunications passionné par les technologies DevOps, le Cloud et l'administration réseau." >> presentation.md
   ```

4. **Préparer et enregistrer les modifications :**
   Placer le fichier dans la zone de transit puis créer un commit local.
   ```bash
   git add presentation.md
   git commit -m "ajout du fichier de présentation presentation"
   ```

5. **Envoyer la branche sur GitHub :**
   Pousser la nouvelle branche sur le dépôt distant tout en configurant le suivi distant (*upstream*).
   ```bash
   git push -u origin presentation-georges-beli
   ```

6. **Créer une Pull Request :**
   - Aller sur l'interface web du dépôt sur GitHub.
   - Cliquer sur le bouton **"Compare & pull request"**.
   - Saisir un titre synthétique (ex. `docs: ajout de la presentation de Georges Valéry`).
   - Renseigner la description récapitulant les changements.
   - Valider en cliquant sur **"Create Pull Request"**.

---

## 3. Questions de réflexion personnelle

**A. Quel concept Git ou GitHub vous a semblé le plus difficile à comprendre ? Pourquoi ?**  
*Réponse :*  
La distinction pratique entre  (`git revert`) et  (`git reset`). Je n'ai pas bien compris la notion de HEAD , ni la commande `git reset --soft`.

**B. Quelle compétence souhaitez-vous améliorer après cette formation ?**  
*Réponse :*  
Je souhaite approfondir mes skills en automatisation. Etendre mes competences en Cloud et Devops pour les integrer au monde du NETWORK
**C. Comment avez-vous trouvé cette formation ? Qu'avez-vous particulièrement apprécié et que faudrait-il améliorer ?**  
*Réponse :*  
Communication effectué dans mon établissement. J'aime le coté pratique des formations

---

## 4. Preuve de réalisation de la formation complémentaire

- **Plateforme :** OpenClassrooms  
- **Intitulé du cours :** *Gérez votre code avec Git et GitHub*  
- **Statut :** Complété  
