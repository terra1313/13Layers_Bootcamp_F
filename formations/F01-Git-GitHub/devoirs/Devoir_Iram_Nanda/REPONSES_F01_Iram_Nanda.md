
# Réponses au questionnaire F01 — Git & GitHub

Étudiant :Iram Arnold Nanda Tchaptchet
formation :Roadmap DevOps

# 1. Qu'est-ce que Git ?

Git est un logiciel de gestion de versions décentralisé. Il permet de suivre l'évolution d'un projet informatique, d'enregistrer l'historique des modifications et de travailler à plusieurs sans écraser le travail des autres.
Deux avantages majeurs :
- La possibilité de revenir en arrière (à n'importe quelle version) en cas d'erreur.
- La gestion des branches, qui permet de développer de nouvelles fonctionnalités en parallèle sans impacter la version stable du projet.

# 2. Qu'est-ce que GitHub ?

GitHub est une plateforme web d'hébergement de dépôts Git. C'est un service qui permet de stocker son code en ligne et de collaborer facilement.
Différence entre Git et GitHub :
- Git est un outil (logiciel) local qui gère les versions.
- GitHub est un service en ligne (cloud) qui héberge les dépôts Git et ajoute des fonctionnalités de collaboration (Pull Requests, Issues, etc.).

# 3. Qu'est-ce qu'un dépôt Git ?

Un dépôt (repository) est un espace de stockage qui contient l'ensemble des fichiers d'un projet ainsi que tout son historique de modifications (le dossier caché .git).
Différence local / distant :
- Un dépôt local est situé sur notre propre machine.
- Un dépôt distant est hébergé sur un serveur (comme GitHub) et permet le partage et la sauvegarde.

# 4. Les trois commandes fondamentales

- git add: Prépare les fichiers modifiés pour le prochain commit (les place dans la zone de staging).
  Exemple : git add presentation.md
- git commit : Enregistre les modifications préparées dans l'historique du dépôt avec un message explicatif.
  Exemple : git commit -m "feat: ajout du fichier presentation
- git push` : Envoie les commits locaux vers le dépôt distant (ex: GitHub).
  *Exemple  git push origin ma-branche

# 5. Les branches Git

Une branche est une ligne de développement indépendante. Elle permet de s'isoler pour travailler sur une fonctionnalité ou une correction.
Il est préférable de ne pas travailler directement sur main car la branche principale doit toujours rester stable et fonctionnelle. Travailler sur une branche dédiée permet de faire des tests sans risquer de casser le projet principal, puis de fusionner (merge) une fois le travail validé.

# 6. Les commits

Un commit est un point de sauvegarde dans l'historique du projet. Il fige l'état des fichiers à un instant T avec un message.
Exemple de message professionnel : fix: correction du bug d'affichage sur mobile
Importance d'un bon message : Il permet de comprendre facilement l'historique du projet, de retrouver quand et pourquoi une modification a été faite, et facilite la relecture par les autres membres de l'équipe.

# 7. Récupérer les modifications

- git pull : Récupère les modifications du dépôt distant ET les fusionne (merge) automatiquement avec la branche locale.
  *Situation :* On l'utilise quand on est sûr de vouloir mettre à jour notre code local avec les dernières modifications du serveur.
- git fetch : Récupère les modifications du dépôt distant SANS les fusionner.
  *Situation :* On l'utilise quand on veut inspecter les changements distants avant de décider de les intégrer, pour éviter les conflits imprévus.

## 8. Les Pull Requests (PR)

Une Pull Request est une demande de fusion d'une branche (souvent une branche de fonctionnalité) vers une autre (souvent main) sur GitHub.
Utilité :Elle permet aux autres membres de l'équipe de relire le code (code review), de discuter des modifications et de valider le travail avant qu'il ne soit intégré au projet principal.
Étapes de création :
1. Pousser la branche sur GitHub (git push).
2. Cliquer sur "Compare & Pull Request".
3. Remplir le titre et la description.
4. Assigner un relecteur.
5. Attendre les retours, corriger si besoin.
6. Fusionner (merge) une fois approuvée.

# 9. Résolution des conflits

Un conflit Git se produit lorsque deux personnes modifient la même ligne d'un même fichier, ou qu'une personne modifie un fichier pendant qu'une autre le supprime. Git ne sait pas quelle version choisir.
Situation : Deux développeurs modifient la même ligne d'un fichier README.md et poussent leurs modifications.
Étapes de résolution :
1. Faire un git pull pour récupérer les changements.
2. Ouvrir le fichier en conflit Git y insère des marqueurs .
3. Choisir manuellement la version à garder (ou combiner les deux).
4. Supprimer les marqueurs de conflit.
5. Faire git add <fichier> puis git commit pour valider la résolution.

## 10. Mise en pratique

Voici les étapes et commandes pour ajouter un fichier iram-nanda.md :

bash
# 1. Récupérer le projet
git clone <URL_DU_DEPOT>
cd <NOM_DU_DEPOT>

# 2. Créer une branche personnelle
git checkout -b iram-nanda

# 3. Créer et modifier le fichier
touch iram-nanda.md
# (Modifier le fichier avec un éditeur comme VS Code)

# 4. Préparer et enregistrer les modifications
git add iram-nanda.md
git commit -m "docs: ajout de ma présentation"

# 5. Envoyer la branche sur GitHub
git push origin iram-nanda

# 6. Créer une Pull Request
# (Aller sur GitHub et cliquer sur "Compare & pull request")