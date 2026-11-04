# 13Layers Academy — Réponses au Questionnaire F01 : Fondamentaux Git & GitHub

**Programme :** Roadmap DevOps  
**Module :** F01 — Git & GitHub  
**Organisme :** 13Layers Academy  
**Étudiant :** TIYONG TANEKEU JUAN ANTHONY FRED 
**Fichier :** `REPONSES_F01_JUAN_TIYONG.md`  
**Date :** 30 Octobre 2026  

---

## 1. Informations Générales

- **Nom & Prénom :** TIYONG TANEKEU JUAN ANTHONY FRED
- **Établissement / Formation :** Institut Universitaire de la Cote (IUC) — Reseaux et Securite Informatique
- **Parcours :** Roadmap DevOps — 13Layers Academy
- **Dépôt de soumission :** `Devoir_JUAN_TIYONG /`REPONSES_F01_JUAN_TIYONG.md`  

---

## 2. Réponses au Questionnaire

### Question 1 — Qu'est-ce que Git ?

**Définition :**  
Git est un système de contrôle de version distribué open-source permettant  de suivre l'historique complet des modifications apportées aux fichiers du code source d'un projet au fil du temps.

**Deux avantages majeurs dans un projet informatique :**
1. **Historique complet, traçabilité et réversibilité :** Git enregistre chaque modification. Cela permet de suivre qui a modifié quoi, à quel moment et pour quelle raison. En cas d'erreur, il est très facile de revenir à une version antérieure stable.
2. **Travail collaboratif:** Plusieurs développeurs peuvent travailler en parallèle sur des fonctionnalités sans risquer d'altérer le code principal. La majorité des opérations de gestion de version s'exécutent localement et sans besoin d'une connexion réseau constante.

---

### Question 2 — Qu'est-ce que GitHub ?

**Définition :**  
GitHub est une plateforme SaaS (Software as a Service) d'hébergement de dépôts Git basée sur le cloud. 
**Différence essentielle entre Git et GitHub :**
- **Git** est l'outil logiciel en ligne de commande installé localement sur votre ordinateur qui gère le suivi des versions de vos fichiers.
- **GitHub** est un service en ligne distant hébergeant les dépôts Git pour faciliter le partage, la revue de code, le suivi des bugs, et la collaboration en équipe.


---

### Question 3 — Qu'est-ce qu'un dépôt Git ?

**Définition d'un dépôt Git :**  
Un dépôt Git c'est un dossier qui conserve un historique des versions et des modiications d'un projet 
**Différence entre un dépôt local et un dépôt distant :**
- **Dépôt local :** C'est l'endroit ou l'on stocke sur sur son ordinateur une copie d'un projet et de ses differentes versions . 
- **Dépôt distant :** c'est la version demarterialisee d'un dossier que ce soitsur internet ou un reseau permettant de centraliser le travail .

### Question 4 — Les trois commandes fondamentales

1. **`git add`**
   - **Rôle :** Ajoute les fichiers modifiés ou nouveaux de l'espace de travail (*Working Directory*) vers la zone de transit (*Stage Area* / Index); cette étape permet de sélectionner précisément quelles modifications figureront dans le prochain commit.
   - **Exemple :**
     ```bash
     # Ajouter un fichier spécifique
     git add index.html

     # Ou ajouter l'ensemble des fichiers modifiés du répertoire courant
     git add .
     ```

2. **`git commit`**
   - **Rôle :** Enregistre définitivement les modifications contenues dans la zone de transit dans l'historique du dépôt local. 
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

* **Qu'est-ce qu'une branche ?**  
  C'est une copie de travail isolée du code. Elle permet de travailler sur une fonctionnalité sans toucher au code principal (`main`).
* **Pourquoi ne pas modifier directement `main` ?**  
  Pour garder le code principal toujours propre, stable et fonctionnel, et pour permettre à plusieurs de travailler en même temps sans se marcher sur les pieds.

---

### Question 6 — Les commits

* **Qu'est-ce qu'un commit ?**  
  C'est une sauvegarde enregistrée de vos fichiers à un instant précis, avec une description de ce que vous avez fait.
* **Exemple de message :**
  ```text
  feat(game): ajout des commandes de direction
  ```
* **Pourquoi c'est important ?**  
  Pour comprendre rapidement ce qui a été modifié et pour retrouver facilement l'origine d'un bug si le code plante.

---

### Question 7 — Récupérer les modifications

* **`git fetch` :** Télécharge les nouveautés du serveur **sans modifier** vos fichiers actuels (c'est une simple vérification).
* **`git fetch` vs `git pull` :**  
  `git pull` fait l'équivalent d'un `git fetch` **plus** une fusion directe (`merge`) dans votre dossier de travail.

---

### Question 8 — Les Pull Requests (PR)

* **Qu'est-ce que c'est ?**  
  Une demande officielle pour fusionner votre code d'une branche vers la branche principale (`main`), souvent sur GitHub.
* **Pourquoi l'utiliser ?**  
  Pour permettre à l'équipe de relire le code (revue de code) et de lancer des tests automatiques avant d'intégrer les modifications.
* **Comment faire ?**  
  1. Envoyer sa branche : `git push origin ma-branche`
  2. Aller sur GitHub et cliquer sur **"Compare & pull request"**
  3. Rédiger un titre et valider.

---

### Question 9 — Résolution des conflits

* **C'est quoi un conflit ?**  
  Il survient quand Git ne sait pas quelle version garder parce que deux personnes ont modifié les *mêmes lignes* d'un fichier de manière différente.
* **Comment le régler ?**  
  1. Ouvrir le fichier en conflit (Git y ajoute des balises `<<<<<<<` et `>>>>>>>`).
  2. Choisir la bonne version à garder et effacer les balises de Git.
  3. Valider avec `git add` puis `git commit`.

---

### Question 10 — Mise en pratique

1. **Cloner le projet :**
   ```bash
   git clone "url-du-depot"
   ```
2. **Créer sa branche :**
   ```bash
   git checkout -b presentation-nom
   ```
3. **Créer et modifier le fichier :**
   ```bash
   echo "# Présentation" > presentation.md
   ```
4. **Sauvegarder (Commit) :**
   ```bash
   git add presentation.md
   git commit -m "docs: ajout de la présentation"
   ```
5. **Envoyer sur GitHub :**
   ```bash
   git push -u origin presentation-nom
   ```
6. **Faire la Pull Request** depuis l'interface web de GitHub.

---

## 3. Questions de réflexion personnelle

* **A. Quel concept Git vous a semblé le plus difficile ?**  
  La différence entre `git reset` et `git revert`, ainsi que la gestion du pointeur `HEAD`.
* **B. Quelle compétence souhaitez-vous améliorer ?**  
  Approfondir l'automatisation, le Cloud et le DevOps pour les appliquer aux réseaux et télécommunications.
* **C. Comment avez-vous trouvé cette formation ?**  
  Très bien, j'ai particulièrement apprécié l'approche pratique.

---

## 4. Preuve de réalisation de la formation complémentaire

* **Plateforme :** OpenClassrooms  
* **Intitulé du cours :** *Gérez votre code avec Git et GitHub*  
* **Statut :** Complété
