# Réponses F01 : Fondamentaux Git & GitHub

**Étudiant :**SIEGNING MBOUTCHOUANG LUORIDE SILAURE
**Programme :** Roadmap DevOps — 13Layers Academy
**Module :** F01 — Git & GitHub

---

## Question 1 — Qu'est-ce que Git ?

Git est un **système de contrôle de version distribué**. Il enregistre l'historique des modifications d'un projet et permet de revenir à une version antérieure.

Avantages :

- **Historique complet** : on sait qui a modifié quoi, quand et pourquoi, et on peut annuler une erreur.
- **Travail collaboratif** : plusieurs personnes travaillent en parallèle sans écraser le travail des autres.
- **Fonctionnement hors ligne** : chaque développeur possède une copie complète du projet et de son historique.

---

## Question 2 — Qu'est-ce que GitHub ?

GitHub est une **plateforme web d'hébergement de dépôts Git** qui ajoute des outils de collaboration : Pull Requests, issues, revues de code, gestion des droits d'accès.

**Différence :** Git est l'outil, le logiciel installé sur la machine qui gère les versions. GitHub est un service en ligne qui héberge des dépôts Git et facilite le travail d'équipe. 

---

## Question 3 — Qu'est-ce qu'un dépôt Git ?

Un dépôt (*repository*) est un dossier de projet suivi par Git. Il contient les fichiers du projet et tout l'historique des modifications, stocké dans le dossier caché `.git`.

- **Dépôt local** : situé sur ma machine. 
- **Dépôt distant** : hébergé sur  GitHub. Il sert de point de partage entre les membres de l'équipe et se nomme généralement `origin`.

---

## Question 4 — Les trois commandes fondamentales

- **`git add`** : place les modifications dans la *zone de préparation* 
- **`git commit`** : enregistre dans l'historique local un instantané des modifications préparées, accompagné d'un message.
- **`git push`** : envoie les commits locaux vers le dépôt distant.

---

## Question 5 — Les branches Git

Une branche est une **ligne de développement indépendante** : un pointeur mobile vers une série de commits. Elle permet de travailler sur une fonctionnalité ou une correction sans toucher au code principal.

Pourquoi ne pas modifier `main` directement :
- `main` doit rester **stable** et fonctionnel (souvent déployé en production).
- On **isole** son travail : en cas de problème, `main` n'est pas affecté.
- Le code est **relu** via une Pull Request avant d'être fusionné.
- Plusieurs personnes peuvent travailler en parallèle sans se gêner.

---

## Question 6 — Les commits

Un commit est un **instantané** de l'état du projet à un moment donné, 

---

## Question 7 — `git pull` vs `git fetch`

- **`git fetch`** : télécharge les nouveautés du dépôt distant **sans les fusionner** dans ma branche. Je peux les examiner avant d'agir.
- **`git pull`** : équivaut à un `fetch` suivi d'un `merge` (ou d'un rebase) : il **télécharge et intègre** directement les changements.

Situations d'utilisation :

- `fetch` quand je veux voir ce qui a changé avant d'intégrer : `git fetch` puis `git log origin/main`.
- `pull` quand je veux simplement mettre ma branche à jour : `git pull origin main`.

---

## Question 8 — Les Pull Requests

Une Pull Request (PR) est une **demande de fusion** de ma branche dans une autre (souvent `main`) sur GitHub. Elle ouvre un espace de discussion et de revue de code avant l'intégration.

Utilité dans un projet collaboratif : relecture par les pairs, contrôle qualité, tests automatiques (CI), traçabilité des décisions.

Grandes étapes :

1. Créer une branche et faire ses commits.
2. Pousser la branche sur GitHub.
3. Cliquer sur « Compare & pull request ».
4. Choisir la branche de destination, puis donner un titre et une description.
5. Demander des relecteurs et créer la PR.
6. Corriger selon les retours, puis fusionner une fois la PR approuvée.

---

## Question 9 — Résolution des conflits

Un conflit apparaît quand Git ne peut pas fusionner automatiquement deux modifications, typiquement quand deux personnes modifient les mêmes lignes d'un même fichier sur des branches différentes.

1. `git status` pour repérer les fichiers en conflit.
2. Ouvrir le fichier et repérer les marqueurs 
3. Choisir (ou combiner) la bonne version, puis supprimer les marqueurs.
4. `git add fichier` pour indiquer que le conflit est résolu.
5. `git commit` pour finaliser la fusion.
6. `git push` pour envoyer le résultat.

---

## Question 10 — Mise en pratique

```bash
# 1. Récupérer le projet
git clone https://github.com/organisation/projet.git
cd projet

# 2. Créer une branche personnelle
git checkout -b prenom-nom/presentation
# (ou : git switch -c prenom-nom/presentation)

# 3. Créer et modifier le fichier
echo "# Présentation de Prénom Nom" > presentation.md
# puis l'éditer avec un éditeur de texte

# 4. Préparer et enregistrer les modifications
git status                       # vérifier l'état
git add presentation.md          # préparer le fichier
git commit -m "docs: ajoute presentation.md"

# 5. Envoyer la branche sur GitHub
git push -u origin prenom-nom/presentation

# 6. Créer la Pull Request
# Sur GitHub : « Compare & pull request », titre + description, puis « Create pull request »
```

Rôle des commandes :

- `git clone` copie le dépôt distant sur ma machine.
- `git checkout -b` crée une nouvelle branche et bascule dessus.
- `git status` affiche l'état des fichiers.
- `git add` prépare les modifications.
- `git commit` les enregistre localement.
- `git push -u` envoie la branche sur GitHub et lie la branche locale à la branche distante.
- La Pull Request se crée ensuite depuis l'interface GitHub.

---

## Questions de réflexion personnelle

**A. Quel concept Git ou GitHub m'a semblé le plus difficile à comprendre ? 
Le concept qui m'a le plus semble difficile est la realisation du pull request 
**Pourquoi ?**
car au debut je n'ai pas compris quel devoir on doit sourmettre j'essayais avec le cour lu sur open classroom qui ne fonctionnait pas aussi

**B. Quelle compétence souhaité-je améliorer après cette formation ?**
apres cette formation j'aimerai améliorer mes compétences sur la gestions et la comprehensions des futurs projet afin d'avancer librement sans blocus 


**C. Comment ai-je trouvé cette formation ?
la formation a ete tres interessante car pour moi c'est un nouveau monde en dehors des reseau et telecom et je suis ravie de travailler
 **Qu'ai-je apprécié**
 j'ai apprecier la structure des lecons, les quiz et surtout la clarter dans le cour

  **et que faudrait-il améliorer ?**
  pour ce cour j'ai remarquer que les formateurs a un moment donner utilisaient deus OS different MAC et WINDOWS ce qui a creer une grosse confusions


---

## Preuve de réalisation de la formation complémentaire (OpenClassrooms)

**Plateforme :** OpenClassrooms  
- **Intitulé du cours :** *Gérez votre code avec Git et GitHub*  
- **Statut :** Complété  
- **preuve**
![attestation.JPEG]
