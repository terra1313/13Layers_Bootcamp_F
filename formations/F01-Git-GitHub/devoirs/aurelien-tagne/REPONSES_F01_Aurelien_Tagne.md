 Réponses F01 — Git & GitHub

Étudiant :Aurélien Kevin TAGNE

Questionnaire

 Question 1 — Qu'est-ce que Git ?

Git est un outil qui garde l'historique de toutes les modifications d'un projet.
On dit qu'il est « distribué » parce que chaque personne a sur son ordinateur une
copie complète du projet, avec tout son historique.

Deux avantages :
- On peut revenir à une ancienne version si on fait une erreur.
- Plusieurs personnes travaillent en même temps sans écraser le travail des
  autres, et on voit qui a changé quoi.

 Question 2 — Qu'est-ce que GitHub ?

GitHub est un site web qui héberge des projets Git en ligne et ajoute des outils
pour collaborer (fork, Pull Requests, issues).

La différence : Git est l'outil installé sur mon ordinateur, il marche sans
internet. GitHub est un service en ligne qui utilise Git. On peut utiliser Git
sans GitHub, mais pas l'inverse.

 Question 3 — Qu'est-ce qu'un dépôt Git ?

Un dépôt (repository) est un dossier de projet suivi par Git. Il contient les
fichiers et un dossier caché `.git` où Git range l'historique.

- Dépôt local : il est sur mon ordinateur, je peux y travailler sans connexion.
- Dépôt distant : il est sur un serveur comme GitHub et il est partagé avec
  l'équipe. On échange entre les deux avec `git push` et `git pull`.

 Question 4 — Les trois commandes fondamentales

- `git add` : choisit les fichiers à mettre dans le prochain commit.
  Exemple : `git add presentation.md`
- `git commit` : enregistre ces fichiers dans l'historique local avec un message.
  Exemple : `git commit -m "docs: ajout de ma présentation"`
- `git push` : envoie mes commits vers le dépôt distant (GitHub).
  Exemple : `git push -u origin Bootcamp_F01__aurelien_tagne`

 Question 5 — Les branches Git

Une branche est une ligne de travail séparée dans le projet. Elle me permet de
faire des modifications sans toucher à la version principale (`main`).

Il vaut mieux travailler sur une branche dédiée parce que :
- `main` reste stable et ne casse pas si je fais une erreur ;
- chacun peut avancer sur sa tâche en parallèle ;
- mon travail est relu dans une Pull Request avant d'être fusionné.

 Question 6 — Les commits

Un commit est un enregistrement des modifications à un moment donné. Il contient
un identifiant unique, l'auteur, la date et un message.

Exemple de message : `docs(F01): ajout des réponses au questionnaire`

Un bon message est important : il permet de comprendre l'historique, de retrouver
une modification et de faciliter la relecture par les autres.

 Question 7 — Récupérer les modifications

- `git fetch` télécharge les nouveautés du dépôt distant sans modifier mes
  fichiers. Je peux les regarder avant de décider quoi en faire.
- `git pull` fait un `fetch` puis fusionne tout de suite les nouveautés dans ma
  branche.

J'utilise `fetch` quand je veux voir ce qui a changé avant d'intégrer, et `pull`
quand je veux simplement me mettre à jour et que mon travail est propre.

 Question 8 — Les Pull Requests

Une Pull Request (PR) est une demande pour intégrer les modifications d'une
branche dans une autre, souvent `main`.

Elle sert à faire relire le code, à discuter des changements et à contrôler le
travail avant la fusion. Les étapes :
1. Pousser ma branche sur GitHub.
2. Cliquer sur « Compare & pull request ».
3. Vérifier la branche de destination et les fichiers modifiés.
4. Écrire un titre clair et une courte description.
5. Cliquer sur « Create pull request » et attendre la revue.

 Question 9 — Résolution des conflits

Un conflit apparaît quand Git ne peut pas fusionner tout seul, par exemple quand
deux personnes ont modifié la même ligne du même fichier sur deux branches.

Pour le résoudre :
1. `git status` pour voir les fichiers en conflit.
2. Ouvrir le fichier et repérer les marqueurs `<<<<<<<`, `=======` et `>>>>>>>`.
3. Garder la bonne version (ou mélanger les deux) et supprimer les marqueurs.
4. `git add` sur le fichier corrigé.
5. `git commit` pour terminer la fusion.

 Question 10 — Mise en pratique

1. Récupérer le projet : je fais un fork sur GitHub, puis
   `git clone https://github.com/MON-COMPTE/NOM-DU-DEPOT.git` et `cd NOM-DU-DEPOT`.
2. Créer ma branche : `git checkout -b Bootcamp_F01__aurelien_tagne`
3. Créer le fichier : `nano presentation.md`, j'écris ma présentation et j'enregistre.
4. Préparer et enregistrer : `git status` pour vérifier, `git add presentation.md`,
   puis `git commit -m "docs: ajout de ma présentation"`.
5. Envoyer la branche : `git push -u origin Bootcamp_F01__aurelien_tagne`
6. Créer la PR : sur GitHub, « Compare & pull request », je vérifie la branche de
   destination, j'écris un titre et une description, puis « Create pull request ».

 Questions de réflexion personnelle

 A. Concept le plus difficile à comprendre
_À écrire_

 B. Compétence à améliorer
_À écrire_

 C. Avis sur la formation
_À écrire_
