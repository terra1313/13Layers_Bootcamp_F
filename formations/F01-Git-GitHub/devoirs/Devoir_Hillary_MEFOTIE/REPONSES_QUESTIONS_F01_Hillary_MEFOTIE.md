# Remise 13Layers Academy — Réponses au Questionnaire F01 : Fondamentaux Git & GitHub

**Programme :** Roadmap DevOps  
**Module :** F01 — Git & GitHub  
**Organisme :** 13Layers Academy  
**Étudiant :** MEFOTIE KENGNE Hillary Lucere 
**Fichier :** `REPONSES_QUESTIONS_F01_Hillary_MEFOTIE.md`  
**Date :** 23 Octobre 2026  


## 1. Informations Générales

- **Nom & Prénom :** MEFOTIE KENGNE Hillary Lucere 
- **Établissement / Formation :** École Nationale Supérieure Polytechnique de Douala (ENSPD) — Reseaux et Telecommunications
- **Parcours :** Roadmap DevOps — 13Layers Academy
- **Dépôt de soumission :** ` Devoir_Hillary_MEFOTIE
/REPONSES_QUESTIONS_F01_Hillary_MEFOTIE.md`
- **GitHub : ** 'github.com/hillary-dev81'
- **Branche : ** `Devoir_Hillary_MEFOTIE`

## 2. Réponses au Questionnaire

### Question 1 — Qu'est-ce que Git ?

DEFINITION : Git est un logiciel de gestion de versions qui permet de suivre les modifications apportées aux fichiers d'un projet informatique au fil du temps. Il facilite le travail individuel et la collaboration entre plusieurs développeurs.

Les avantages de Git sont :

- Le suivi des modifications : Git conserve l'historique des changements effectués dans un projet et permet de retrouver une version précédente si nécessaire.

- Le travail en équipe : plusieurs développeurs peuvent travailler sur un même projet et fusionner leurs modifications.

- La sauvegarde de l'historique : Git permet de conserver les différentes versions du code et de mieux gérer les erreurs.


### Question 2 — Qu'est-ce que GitHub ?

DEFINITION : GitHub est une plateforme en ligne qui permet d'héberger des dépôts Git et de faciliter la collaboration entre développeurs. Elle propose des fonctionnalités comme le partage de code, la gestion des problèmes (issues) et la révision du code.

- Différence entre Git et GitHub :

Git est un logiciel de gestion de versions qui peut fonctionner localement sur un ordinateur, tandis que 
GitHub est une plateforme en ligne qui héberge des dépôts Git et facilite le travail collaboratif.


### Question 3 — Qu'est-ce qu'un dépôt Git ?

DEFINITION : Un dépôt Git (*repository*) est un espace qui contient les fichiers d'un projet ainsi que l'historique de leurs modifications. Il permet de suivre l'évolution du projet et de retrouver ses différentes versions.

On distingue deux types de dépôts :

- Dépôt local : il est stocké sur l'ordinateur du développeur. Il permet de modifier les fichiers, d'enregistrer les changements et de consulter l'historique du projet.

- Dépôt distant : il est hébergé sur un serveur ou une plateforme en ligne, comme GitHub. Il permet de partager le projet et de synchroniser les modifications entre plusieurs développeurs.

- Différence essentielle : le dépôt local se trouve sur l'ordinateur du développeur, tandis que le dépôt distant est accessible depuis un serveur ou une plateforme en ligne. Les deux peuvent être synchronisés grâce aux commandes Git, comme git push et git pull.


### Question 4 — Les trois commandes fondamentales

1. `git add` :

Cette commande permet d'indexer des fichiers, Préparer les modifications, egalement de sélectionner les fichiers modifiés que l'on souhaite inclure dans le prochain enregistrement.
    - exemple : git add index.html
'git add .' : préparer tous les fichiers modifiés du dossier courant
    - exemple : git add .

2. `git commit`:

Cette commande permet de créer une nouvelle version de fichiers, d'enregistrer les modifications préparées dans l'historique du dépôt Git, avec un message qui décrit les changements. " -m " (comme message) est ce qu'on appelle un argument, qui est ajouté à la commande principale. Ici "-m" permet de définir un message particulier rattaché au commit effectué.
    - exemple :git commit -m "Ajout des fichiers HTML et CSS"

3. `git push`:

Cette commande permet d'envoyer des commits du repository vers le dépôt distant GitHub, d'envoyer les commits enregistrés dans le dépôt local vers un dépôt distant, par exemple sur GitHub.
    - exemple :git push -u origin main 


### Question 5 — Les branches Git

Une branche (branch) est une ligne de developpement independante dans un projet qui permet de travailler sur une nouvelle fonctionnalite, de corriger un bug ou de tester une modification sans affecter directement la branche principale.

Il est préférable de travailler sur une branche dédiée plutôt que de modifier directement la branche principale (`main`) car cela permet de :
    - Proteger la branche principale
    - tester de nouvelles fonctionnalites
    - faciliter le travail d'equipe
    - faciliter la correction des erreurs
    - faciliter la verification du code 


### Question 6 — Les commits

Un commit est un enregistrement des modifications apportées aux fichiers d'un projet dans l'historique Git. 
Il permet de conserver une version précise du projet à un moment donné. 

Donnez un exemple de message de commit professionnel : git commit -m "ajout d'une page de profil utilisateur"

Un bon message est important car il permet de :
    - Comprendre les modifications : il permet de savoir rapidement ce qui a été modifié.

    - Faciliter la collaboration : les autres développeurs comprennent les changements effectués par leurs collègues.

    - Retrouver les modifications : il est plus facile de rechercher un commit précis dans l'historique.

    - Faciliter la maintenance : il aide à comprendre l'évolution du projet et à identifier l'origine d'un problème.


### Question 7 — Récupérer les modifications

Expliquez la différence entre les commandes suivantes :

- `git pull` : 

La commande git fetch permet de récupérer les nouvelles informations et les commits disponibles dans un dépôt distant, comme GitHub, sans modifier directement la branche locale sur laquelle on travaille.

Exemple : git fetch origin

elle permet egalement de :  Récupère les informations et intègre les changements  
                            Peut modifier les fichiers de la branche locale actuelle
                            Permet de mettre à jour directement sa branche locale. 
  
- `git fetch`    

La commande git pull permet de récupérer les modifications du dépôt distant et de les intégrer à la branche locale actuelle.

Exemple : git pull origin main

elle permet egalement de :  Récupère les nouvelles informations du dépôt distant
                            Ne modifie pas directement les fichiers de la branche locale actuelle
                            Permet d'examiner les changements avant de les intégrer.    

Exemple pratique : Imaginons qu'un collègue ait modifié le fichier index.html sur GitHub.

Avec git fetch : git fetch origin
Tu récupères les informations sur les modifications, puis tu peux les examiner avant de décider de les intégrer.

Avec git pull : git pull origin main
Tu récupères les modifications de main et Git tente de les intégrer à ta branche locale actuelle.


### Question 8 — Les Pull Requests

Une Pull Request (PR) est une fonctionnalité de GitHub qui permet de demander une autorisation de modification ou de  proposer l'intégration des modifications d'une branche dans une autre branche.

- Dans un projet collaboratif, un Pull Request permet de :
    - Faire vérifier le code par les autres membres de l'équipe avant son intégration.
    - Discuter des modifications et proposer des améliorations.
    - Détecter les erreurs avant que le code soit intégré à la branche principale.
    - Faciliter le travail en équipe en organisant les modifications apportées au projet.

Les étapes de création d'une Pull Request : 

    - Créer une branche pour la nouvelle fonctionnalité.
    - Modifier le code et enregistrer les changements avec git commit.
    - Envoyer la branche sur GitHub avec git push.
    - Ouvrir le dépôt sur GitHub et cliquer sur New pull request.
    - Choisir la branche de destination (main) et la branche contenant les modifications.
    - Ajouter un titre et une description, puis créer la Pull Request.
    - Faire vérifier le code par l'équipe et corriger les éventuelles remarques.
    - Fusionner la Pull Request après validation.


### Question 9 — Résolution des conflits

Un conflit Git apparaît lorsque Git ne peut pas déterminer automatiquement comment combiner des modifications.

Exemple de situation conflictuelle :
Deux développeurs modifient la même ligne du fichier index.md.
-   Le développeur A écrit : Je suis développeur Python.
-   Le développeur B écrit : Je suis développeur Java.

Lorsque Git tente de fusionner les deux modifications, il ne peut pas choisir automatiquement quelle version conserver, Le fichier peut alors contenir des marqueurs de conflit :
        text
        <<<<<< HEAD
        je suis développeur Python
        ======================
        Je suis développeur Java
        >>>>>>> feature-java

Etapes de resolution du conflit Git :

1.  Identifier les fichiers en conflit : git status
2.  Ouvrir le fichier concerné et examiner les deux versions proposées par Git.
3.  Modifier le fichier pour conserver la bonne version ou combiner les deux modifications. 
        Par exemple : Je suis développeur Python et Java.
4.  Supprimer les marqueurs de conflit (<<<<<<<, =======, >>>>>>>).
5.  Préparer le fichier corrigé : git add presentation.md
6.  Terminer la résolution en créant un commit si nécessaire : git commit -m "Résolution du conflit dans presentation.md"


### Question 10 — Mise en pratique

L'objectif est de récupérer un projet, de créer une branche personnelle, d'ajouter le fichier presentation.md, puis d'envoyer le travail sur GitHub pour créer une Pull Request.

+   Étape 1 — Récupérer le projet

Si le projet est déjà hébergé sur GitHub, on le récupère avec la commande git clone : 
git clone https://github.com/equipe-devops/projet.git : télécharger le dépôt distant sur son ordinateur.
Ensuite, entrer dans le dossier du projet : cd projet

+   Étape 2 — Créer une branche personnelle

git switch -c feature/presentation-personnelle : créer une nouvelle branche appelée feature/presentation-personnelle et se placer dessus pour travailler sans modifier directement main.

+   Étape 3 — Créer et modifier le fichier

Créer le fichier presentation.md : touch presentation.md
Ouvrir ensuite le fichier dans un éditeur de texte et ajouter une courte présentation:
"Bonjour, je suis MEFOTIE KENGNE Hillary Lucere, étudiante ingénieur en Réseaux & Télécommunications passionné par les reseaux et les tecommunications orinte fibre optique.

Rôle : créer le fichier et y rédiger sa présentation personnelle.

+   Étape 4 — Préparer et enregistrer les modifications

Préparer le fichier : git add presentation.md : ajouter le fichier à la zone de préparation (staging area).

Enregistrer les modifications : git commit -m "Docs: ajout de la présentation personnelle" : créer un commit contenant les modifications préparées dans l'historique local.

+   Étape 5 — Envoyer la branche sur GitHub

git push -u origin feature/presentation-personnelle : envoyer la branche et ses commits sur le dépôt distant GitHub. L'option -u configure également le suivi de la branche distante pour les prochains échanges.

+   Étape 6 — Créer une Pull Request

    - Ouvrir le dépôt du projet sur GitHub.
    - Cliquer sur Compare & pull request si cette option est proposée, ou sur Pull requests, puis New pull request.
    - Choisir :
        * Base : main — branche de destination.
        * Compare : feature/presentation-personnelle — branche contenant les modifications.
    - Ajouter un titre, par exemple : Ajout de la présentation personnelle.
    - Ajouter une courte description du travail réalisé.
    - Cliquer sur Create pull request.
La Pull Request peut ensuite être examinée par les membres de l'équipe avant la fusion dans main.


## 3. Questions de réflexion personnelle

Répondez également aux questions suivantes à la fin de votre document :

**A.** Quel concept Git ou GitHub vous a semblé le plus difficile à comprendre ?
Les commandes git revert, git reset et la notion de HEAD durant les exercices pratiques, je n'arrive pas a bien cerner les explications et leurs differences

**B.** Quelle compétence souhaitez-vous améliorer après cette formation ?
Je souhaite ameliorer mes competences en cloud computing et Devops

**C.** Comment avez-vous trouvé cette formation ?
cette formation etait tres interessante, enrichissante

Qu'avez-vous particulièrement apprécié et que faudrait-il améliorer ?
j'ai bien apprecier l'apprentissage complet de git et github avec des exercices et quizs pratiques et je ne trouve pas grand chose a ameliorer.