# 13Layers Academy — Réponses au Questionnaire F01 : Fondamentaux Git & GitHub

**Programme :** Roadmap DevOps
**Module :** F01 — Git & GitHub
**Organisme :** 13Layers Academy  
**Étudiant :** AGASSEM SANDA Florentin  
**Fichier :** `REPONSES_F01_Agassem_Florentin.md`  
**Date :** 19 octobre 2026 

---

## 1. Informations Générales

- **Nom & Prénom :** AGASSEM SANDA Florentin
- **Établissement / Formation :** École Nationale Supérieure Polytechnique de Douala (ENSPD) — Génie logiciel
- **Parcours :** Roadmap DevOps — 13Layers Academy
- **Adresse GitHub :** [lien Github](https://github.com/Asanflo/)

---

## 2. Réponses au Questionnaire

### Question 1 — Qu'est-ce que Git ?

**Git**, outil créé par Linus Torvalds, est un gestionnaire de versions permettant aux développeurs de suivre l'historique des différents changements apportés à leur projet.

Il a pour avantages :
- **Suivre l'historique des fichiers d'un projet**
- **Permettre la collaboration entre les développeurs dans un projet logiciel**

### Question 2 — Qu'est-ce que GitHub ?

**GitHub** est une plateforme en ligne utilisée par les développeurs pour stocker les différents fichiers de leurs projets.

**La différence entre Git et GitHub** est que Git est un **gestionnaire de versions**, tandis que GitHub est **un site en ligne qui héberge les différents dépôts Git**.

### Question 3 — Qu'est-ce qu'un dépôt Git ?

**Un dépôt Git** est comme un dossier conservant l'historique des modifications et les différentes versions des fichiers d'un projet logiciel.

**Un dépôt local** se trouve sur la machine du développeur, tandis qu'un **dépôt distant** est celui qui se trouve sur GitHub.

### Question 4 — Les trois commandes fondamentales

- **`git add`**

Il permet d'indexer les fichiers qui seront ajoutés au dépôt Git.

**Exemple**
```bash
    # ajoute tous les fichiers modifiés depuis la précédente indexation
     git add .
```

- **`git commit`**

Il permet d'enregistrer les fichiers dans l'historique du dépôt local avec un message.

**Exemple**
```bash
    # enregistre les fichiers liés à une feature
     git commit -m "feat: bouton commander"
```

- **`git push`**

Il permet d'envoyer les fichiers commités au dépôt distant.

**Exemple**
```bash
    # envoyer les fichiers commités sur la branche main
     git push -u origin main
```

### Question 5 — Les branches Git

**Une branche** est une copie du code à un instant donné.
Il est préférable de travailler sur une branche dédiée plutôt que sur la branche principale, car en cas d'erreur, la branche principale ne sera pas affectée.

### Question 6 — Les commits

**Un commit** est une sauvegarde du projet à un instant donné.

```text
    feat(auth): ajout de l'authentification par email et mot de passe
```    
- Intégration du formulaire de connexion
- Ajout de la vérification JWT côté serveur

### Question 6 — Les commits

**git pull** permet de récupérer les fichiers, les commits, etc. distants et les intègre à la branche, tandis que **git fetch** récupère juste les métadonnées et les commits distants.

**Situation d'utilisation**

- Lorsqu'on veut inspecter les changements apportés par les camarades sur le dépôt distant pour voir si on les intègre ou non à notre dépôt local, on utilise **git fetch**.

- Lorsque nous voulons mettre à jour notre travail à partir de la branche principale, on utilisera **git pull**.

### Question 8 — Les Pull Requests

**Une pull request** est une demande initiée pour fusionner le travail d'une branche x à la branche principale.

**Utilité** : elle permet de mettre à jour la branche principale à partir du code vérifié et testé provenant d'autres branches.

**Étapes de sa création** : une fois la branche créée et les fonctionnalités ajoutées, il faut :
- Pousser le travail sur le dépôt distant
- Se rendre sur le repository GitHub et initier une pull request en cliquant sur *compare & pull request*
- Donner un titre et une description à la pull request
- Ajouter des relecteurs pour la vérification et la validation de la pull request

### Question 9 — Résolution des conflits
**Un conflit Git** est une situation durant laquelle Git ne sait pas comment fusionner les modifications provenant de deux branches différentes.

**Situation de conflit** : une ligne d'un même fichier a été modifiée avec deux valeurs différentes (dans la branche x et la branche principale).

**Les étapes de résolution** :
- Mettre à jour la branche locale 
- Déclencher la fusion localement
- Repérer les fichiers conflictuels en utilisant **git status** pour vérifier le fichier modifié des deux côtés
- Ouvrir le fichier et inspecter les balises générées par Git :
 **<<<<<<<< HEAD** : ligne de la branche x
 **=============** : ligne de séparation
 **<<<<<<<< origin/main** : ligne de la branche main
- Choisir le code à conserver
- Valider les modifications par un commit et pousser la correction sur la branche x pour mettre à jour la pull request   

### Question 10 — Mise en pratique

1. Récupérer le projet
```bash
git clone https://github.com/<org>/<projet>.git
cd <projet>
```
Clone le dépôt distant en local et se place dedans.

2. Créer une branche personnelle
```bash
git checkout -b feature/presentation-florentin
```
Crée la branche et bascule dessus (équivalent : `git switch -c ...`).

3. Créer et modifier le fichier
```bash
touch presentation.md
nano presentation.md
```
Contenu exemple :
```md
**Agassem Florentin**
Étudiant en Génie Logiciel à l'ENSPD, passionné par le backend
et le cloud (Django, Spring Boot, FastAPI). Objectif : Cloud Architect.
```

4. Préparer et enregistrer les modifications
```bash
git status
git add presentation.md
git commit -m "docs: ajout de presentation.md"
```
- `git status` : vérifie les fichiers modifiés.
- `git add` : place le fichier dans la zone d'indexation (staging).
- `git commit` : enregistre un instantané dans l'historique local.

5. Envoyer la branche sur GitHub
```bash
git push -u origin feature/presentation-florentin
```
Publie la branche sur le dépôt distant (`-u` lie la branche locale à la distante).

6. Créer la Pull Request
    1. Aller sur le dépôt GitHub : bouton **Compare & pull request**.
    2. Base : `main` ← Compare : `feature/presentation-florentin`.
    3. Ajouter un titre et une description, puis **Create pull request**.

Ou en ligne de commande :
```bash
gh pr create --base main --title "docs: ajout de presentation.md" --body "Ajout de ma présentation"
```


## 3. Questions de réflexion personnelle

**A.** : La gestion des conflits et la notion d'index HEAD, parce que certaines fusions échouent lors de la gestion des conflits.

**B.** : Mettre en place des projets concrets pour apprendre à prendre en main et à utiliser les outils du quotidien d'un DevOps. En savoir plus sur le métier d'architecte cloud.

**C.** : Pour l'instant, rien, vu que nous sommes au début de la formation.