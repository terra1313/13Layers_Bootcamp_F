13Layers Academy — Formation F01 : Fondamentaux Git & GitHub

Nom et prénom : MADJOUKOUO MBA KERLANE JAMAELLE
Formation : Roadmap DevOps
Module : F01 — Git & GitHub
Organisme : 13Layers Academy



Question 1 — Qu'est-ce que Git ?

Git est un système de gestion de versions qui permet de suivre les modifications effectuées sur les fichiers d'un projet informatique.

Ses principaux avantages sont :

 - Il facilite le travail en équipe.
 - Il permet de suivre les modifications effectuées par chaque développeur.
 
Question 2 — Qu'est-ce que GitHub ?

GitHub est une plateforme en ligne qui permet d'héberger des dépôts Git et de collaborer sur des projets informatiques.

La différence est que Git est l'outil qui gère les versions du projet, tandis que GitHub est une plateforme qui permet notamment de stocker les dépôts en ligne et de travailler en équipe.

Question 3 — Qu'est-ce qu'un dépôt Git ?

Un dépôt Git (repository) est un espace qui contient les fichiers d'un projet ainsi que l'historique de leurs modifications.

On distingue deux types de dépôts :

- Dépôt local : il se trouve sur notre ordinateur.
- Dépôt distant : il est hébergé sur un serveur, par exemple sur GitHub.

Le dépôt local permet de travailler sur son ordinateur, tandis que le dépôt distant facilite le partage et la collaboration.

Question 4 — Les trois commandes fondamentales

1. git add

La commande "git add" prépare les modifications pour le prochain commit.

Exemple :

git add presentation.md

Cette commande prépare le fichier "presentation.md" pour son enregistrement dans l'historique Git.

2. git commit

La commande "git commit" enregistre les modifications préparées dans l'historique local du dépôt.

Exemple :

git commit -m "Ajout du fichier de presentation"

Le message décrit la modification enregistrée.

3. git push

La commande "git push" envoie les commits locaux vers le dépôt distant.

Exemple :

git push origin ma-branche

Cette commande envoie les commits de la branche "ma-branche" vers le dépôt distant appelé "origin".

Question 5 — Les branches Git

Une branche est une ligne de développement indépendante qui permet de travailler sur des modifications sans affecter directement la branche principale.
Il est préférable de créer une branche dédiée pour chaque nouvelle fonctionnalité ou contribution, car cela permet de travailler séparément, de tester les modifications et de les faire vérifier avant leur intégration dans le "main".


Question 6 — Les commits

Un commit est un enregistrement des modifications préparées dans l'historique du dépôt Git.

Exemple de message professionnel :

git commit -m "Ajout de la présentation personnelle"

Un bon message de commit doit être court, clair et précis. Il permet aux autres membres de l'équipe de comprendre facilement les modifications apportées au projet.

Question 7 — Récupérer les modifications

Les commandes "git pull" et "git fetch" permettent de récupérer les informations d'un dépôt distant, mais elles ont des rôles différents.

- git pull

La commande "git pull" récupère les modifications distantes et les intègre dans la branche locale courante.

On l'utilise lorsqu'on souhaite mettre à jour sa branche locale avec les modifications présentes sur la branche distante "main".

- git fetch

La commande "git fetch" récupère les nouvelles informations du dépôt distant sans intégrer automatiquement les modifications dans la branche locale courante.

On l'utilise lorsqu'on souhaite vérifier les changements disponibles sur le dépôt distant avant de décider de les intégrer.



Question 8 — Les Pull Requests

Une Pull Request (PR) est une proposition de modification sur GitHub qui permet de demander l'intégration des changements d'une branche dans une autre branche.

Elle est utile parce qu'elle permet aux membres d'une équipe de vérifier les modifications, de commenter le travail et de détecter les erreurs avant l'intégration.

Les principales étapes de création d'une Pull Request sont :

1. Créer une branche.
2. Modifier ou ajouter les fichiers nécessaires.
3. Préparer les modifications avec "git add".
4. Enregistrer les modifications avec "git commit".
5. Envoyer la branche sur GitHub avec "git push".
6. Ouvrir une Pull Request sur GitHub.
7. Ajouter un titre et une description.
8. Soumettre la Pull Request pour vérification.

Question 9 — Résolution des conflits

Un conflit Git apparaît lorsque Git ne peut pas intégrer automatiquement des modifications incompatibles, par exemple lorsque deux personnes modifient les mêmes lignes d'un fichier.

Pour résoudre un conflit, il faut :

1. Identifier le fichier concerné.
2. Ouvrir le fichier et examiner les modifications contradictoires.
3. Choisir les modifications à conserver ou combiner les deux versions.
4. Supprimer les marqueurs de conflit ajoutés par Git.
5. Enregistrer le fichier.
6. Préparer la résolution avec "git add".
7. Enregistrer la résolution avec "git commit", si un commit de fusion est nécessaire.



Question 10 — Mise en pratique

Pour ajouter un fichier "presentation.md" contenant une courte présentation personnelle dans un projet DevOps, voici les étapes à suivre.

Étape 1 : Récupérer le projet

git clone URL_DU_DEPOT

Cette commande copie le dépôt distant sur l'ordinateur.

Ensuite, entrer dans le dossier du projet :

cd NOM_DU_DEPOT

Étape 2 : Créer une branche personnelle

git checkout -b prenom-nom-presentation

Cette commande crée une branche personnelle et permet de basculer dessus.

Étape 3 : Créer et modifier le fichier

Créer un fichier nommé "presentation.md" dans le dossier du projet, puis écrire une courte présentation personnelle.

Étape 4 : Préparer et enregistrer les modifications

Vérifier les modifications :

git status

Préparer le fichier :

git add presentation.md

Enregistrer les modifications :

git commit -m "Ajout de la presentation personnelle"

Étape 5 : Envoyer la branche sur GitHub

git push -u origin prenom-nom-presentation

Cette commande envoie la branche personnelle vers le dépôt distant GitHub.

Étape 6 : Créer une Pull Request

1. Ouvrir le dépôt sur GitHub.
2. Accéder à la section Pull requests.
3. Cliquer sur New pull request.
4. Choisir "main" comme branche de destination, si c'est la branche principale demandée.
5. Choisir "prenom-nom-presentation" comme branche source.
6. Ajouter un titre et une description.
7. Cliquer sur Create pull request.

La Pull Request permet au responsable du projet de vérifier la contribution avant de l'intégrer.

3. Questions de réflexion personnelle

A. Quel concept Git ou GitHub vous a semblé le plus difficile à comprendre ? Pourquoi ?

Le concept des branches et des Pull Requests m'a semblé le plus difficile à comprendre au début, car il faut distinguer les modifications locales, les branches distantes et les propositions d'intégration. La pratique permet de mieux comprendre leur fonctionnement.

B. Quelle compétence souhaitez-vous améliorer après cette formation ?

Je souhaite améliorer ma maîtrise des commandes Git, la gestion des branches, la résolution des conflits et la création des Pull Requests afin de mieux collaborer sur des projets informatiques.

C. Comment avez-vous trouvé cette formation ? Qu'avez-vous particulièrement apprécié et que faudrait-il améliorer ?

J'ai trouvé cette formation intéressante et enrichissante. J'ai particulièrement apprécié la découverte des commandes Git et des méthodes de collaboration sur GitHub. Il serait intéressant d'ajouter davantage d'exercices pratiques guidés pour faciliter la compréhension des concepts.