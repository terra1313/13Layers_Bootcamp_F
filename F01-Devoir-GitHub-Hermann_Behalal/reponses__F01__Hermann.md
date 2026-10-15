# 13Layers Academy — Catalogue de questions
## Formation F01 : Fondamentaux Git & GitHub

**Programme :** Roadmap DevOps  
**Module :** F01 — Git & GitHub  
**Organisme :** 13Layers Academy  
**Type d'évaluation :** Questionnaire individuel  
**Étudiant :** BEHALAL HERMANN  
**Fichier :** `REPONSES_F01_Hermann.md`  
**Date :** 15 Octobre 2026  

---

## 1. Informations Générales

- **Nom & Prénom :** BEHALAL HERMANN 
- **Établissement / Formation :** École Nationale Supérieure Polytechnique de Douala (ENSPD) — Genie-logiciel
- **Parcours :** Roadmap DevOps — 13Layers Academy
- **Dépôt de soumission :** `F01-Devoir-GitHub-Hermann_Behalal`

---

## 2. Questionnaire

### Question 1 — Qu'est-ce que Git ?

git est un systeme de contrôle de version distribué.

**Avantages:**

-Il permet de suivre l'historique complet des modifications du code.
-Il permet de revenir facilement a une version anterieure en cas d'erreur.

### Question 2 — Qu'est-ce que GitHub ?

GitHub est une plateforme web d'hebergement de dépôts git.

**Différence:** Git est l'outil logiciel local qui gere les versions,tandis que Github est un service en ligne(cloud) qui stocke ces dépôt et permet le partage.

### Question 3 — Qu'est-ce qu'un dépôt Git ?

 un dépôt  est un espace de stockage qui contient tous les fichiers d'un projet ainsi que l'historique de leurs modifications.

 **Différence:** Un dépôt local est situe sur votre ordinateur.un dépôt distant est héberge sur un serveur(comme github).

### Question 4 — Les trois commandes fondamentales

- `git add`:Ajoute les modifications des fichiers a la zone de preparation (index) avant de les valider.
Exemple: git add mon_fichier.txt ou git add .
- `git commit`:Enregistre les modifications préparées dans l'historique local du dépôt avec un message descriptif.
Exemple: git commit -m "Ajout de la page de connexion"
- `git push`:Envoie les commits locaux vers le dépôt distant.
EXemple:git push origin main

### Question 5 — Les branches Git

une branche est une ligne de développement indépendant.Il est preferable de travailler sur une branche dediée pour isoler les nouvelles fonctionalités ou les corrections de bugs.cela evite de pertuber la branche principale(souvent main ou master) qui doit rester stable et fonctionnelle.

### Question 6 — Les commits

un commit est un enregistrement des modifications apportées au projet a un instant précis,accompagné d'un message.

**Exemple de message professionnel:** git commit - m "feat: ajout de la page d'accueil".

**pourquoi c'est important:** un bon message permet de comprendre rapidement l'historique du projet, de faciliter la relecture du code par les autres et de retrouver facilement l'origine d'un bug.

### Question 7 — Récupérer les modifications

- `git pull`:Télécharge les modifications et les fusionne automatiquement dans votre branche actuelle. 
- `git fetch`Télécharge les modifications depuis le dépôt distant sans les fusionner avec votre travail local.

**situation d'utilisation:** Utiliser git fetch si vous voulez vérifier les mises a jour tranquilement avant de les intégrer.Utiliser git pull si vous etes sur de vouloir mettre a jour votre code local immediatement.

### Question 8 — Les Pull Requests

un pull Request est une demande formelle pour integrer vos modifications(vos commits) dans une autre branche (souvent la branche principale).

**utilite:** Elle permet aux autres menbres de l'équipe de relire votre code, de discuter des changements et de valider la fusion avant qu'elle ne soit effectuée.

**Etape de creation:** 

1. créer une branche et faire ses commits
2. pousser la branche sur GitHub(git push)
3. se rendre sur Github et cliquer sur "New pull Request".
4. Remplir le titre et la description.
5. Demander une revue a ses collegues.

### Question 9 — Résolution des conflits

un conflit Git survient lorsque Git ne peut pas fusionner automatiquement deux modifications car elles touchent les memes lignes d'un fichier.

**Situation:** Deux développeurs modifient la ligne du meme fichier et essaient de fusionner leurs branches.

**Etapes de resolution:**

1. ouvrir le fichier en conflit et repérer les marqueurs.
2. choisir la version a garder.
3. supprimer les marqueurs de conflit.
4. Enregistrer le fichier, puis faire git add <fichier> et git commit.

### Question 10 — Mise en pratique

1. Récupérer le projet.

**commande:** git clone <url_du_depot>
**role:** Télécharge une copie complete du projet distant sur votre ordinateur.

2. Créer une branche personnelle.

**commande:** git checkout -b ma-branche(ou git switch -c ma-branche)
**role:** créer une nouvelle branche et bascule dessus immédiatement,pour travailler sans impacter la branche principale.

3. Créer et modifier le fichier.

**Action:** créez le fichier presentation.md dans votre éditeur de texte et écrivez votre présentation.
**commande(optionnelle):** touch presentation.md(pour créer un fichier vide en ligne de commmande).
**role:** Ajoute le fichier demande a votre espace de travail local.

4. Préparer et enregistrer les modifications.

**commande:** git add presentation.md puis git commit -m "docs:ajout de ma presentation".
**role:** 
-git add: prépare le fichier pour l'enregistrement(Zone de staging).
-git commit: enregistre définitivement les modifications dans l'historique local de votre branche.

5. Envoyer la branche sur GitHub.

**commande:** git push origin ma-branche
**role:** Envoie votre branche locale et vos commits vers le dépôt distant(GitHub) pour le rendre visible aux autres.

6. Créer une Pull Request.

**action:** Rendez-vous sur l'interface web de GitHub.un bouton "Compare & pull request" apparaitra pour votre branche.cliquez dessus, remplissez le titre et la description,puis validez.

**role:** Demande officiellement aux responsables du projet de relire et fusionner votre travail dans la branche principale.

----


## 3. Questions de réflexion personnelle

Répondez également aux questions suivantes à la fin de votre document :

**A.** Quel concept Git ou GitHub vous a semblé le plus difficile à comprendre ? Pourquoi ?

le concept git, la gestion des differentes versions et modifications d'un projet.je trouve cela deroutant et fascinant car cela resoud un probleme majeur de developpement ,revenir un etat anterieure au modification d'un projet en cas de bug.


**B.** Quelle compétence souhaitez-vous améliorer après cette formation ?

le travail en equipe.


**C.** Comment avez-vous trouvé cette formation ? Qu'avez-vous particulièrement apprécié et que faudrait-il améliorer ?

la formation a ete satisfaisante,elle a comble mes lacunes et repondu a mes attentes. la simplicite du cours facile a comprendre pour un debutant.j'ai aussi decouvert par ricochet l'univers des cours sur openclassroom, avec cette premiere immersion,je trouve que le cours est bien construit.
---

## 4. Critères d'évaluation

| Critère | Points |
|---|---:|
| Compréhension de Git et GitHub | 20 |
| Maîtrise des commandes fondamentales | 20 |
| Compréhension des branches et commits | 20 |
| Pull Requests et collaboration | 20 |
| Mise en pratique et qualité des réponses | 20 |
| **Total** | **100** |

Les questions de réflexion personnelle servent à recueillir vos retours et ne sont pas notées.

---

## 5. Livrable attendu

Enregistrez vos réponses dans un fichier nommé :

`REPONSES_F01_Prenom_Nom.md`

Placez-le dans votre dossier personnel, selon l'arborescence demandée par le formateur.

Exemple :

`devoirs/prenom-nom/REPONSES_F01_Prenom_Nom.md`

Remplacez `Prenom_Nom` par vos informations réelles, en respectant les conventions de nommage du dépôt.

**Avant de soumettre votre Pull Request :**

- Vérifiez que les 10 questions ont reçu une réponse.
- Relisez votre document.
- Vérifiez que vos modifications sont bien présentes sur GitHub.
- Ajoutez la preuve de réalisation de la formation complémentaire.

**13Layers Academy — Learn, Build, Collaborate.**