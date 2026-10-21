# 13Layers Academy — Catalogue de questions
## Formation F01 : Fondamentaux Git & GitHub

**Programme :** Roadmap DevOps  
**Module :** F01 — Git & GitHub  
**Organisme :** 13Layers Academy  
**Type d'évaluation :** Questionnaire individuel  
**Objectif :** Vérifier la compréhension des concepts fondamentaux de Git et GitHub avant de passer aux prochaines étapes de la roadmap DevOps.

---

## 1. Consignes générales

Chaque étudiant doit :

1. Lire attentivement les 10 questions.
2. Répondre avec ses propres mots, en donnant des exemples lorsque cela est demandé.
3. Enregistrer ses réponses dans son dossier de travail sur GitHub.
4. Respecter les règles de nommage des branches et des fichiers.
5. Soumettre son travail au moyen d'une Pull Request.
6. Suivre la formation complémentaire indiquée sur OpenClassrooms et fournir une preuve de réalisation.

**Important :** le copier-coller sans compréhension n'est pas recommandé. Les réponses doivent démontrer votre compréhension des concepts étudiés.

---

## 2. Questionnaire

### Question 1 — Qu'est-ce que Git ?

Git est un service qui permet de gerer les differentes versions d'un projet

### Question 2 — Qu'est-ce que GitHub ?

Github est un servicee qui permet d'heberger les depots pour pouvoir y acceder plus facilemment

### Question 3 — Qu'est-ce qu'un dépôt Git ?

un depot Git est un dossier dans lequel om stocke les versions et les modifications apportes a un projet. 
un depot en local est stocke sur notre ordinateur. un depot distant est heberge en ligne

### Question 4 — Les trois commandes fondamentales

Expliquez le rôle des commandes suivantes et donnez un exemple d'utilisation pour chacune :

- `git add` : permet de selectionner un fichier.exple git add screenshot.jpg
- `git commit`: cree une nouvelle version
exple git commit -m "changement de police"
- `git push`: envoyer un fichier ou une version sur le depot distant
exple git push origin main

### Question 5 — Les branches Git

une branche c'est une copie du projet sur laquelle on pourra effectuer les modifications qu'on souhaite.
c'est preferable parceque ca permet de travailler sur un projet sans affecter la branche principale

### Question 6 — Les commits

un commit est une demande de sauvegarde qui permet de creer une nouvelle version du projet qui contient nos modifications.
exple git commit -m "realisation de la partie cagnotte cote front end"
c'est important car c'est limpide.n'importe qui qui travaille sur le projet sait ou a une idee des modifications qui ont ete apportees

### Question 7 — Récupérer les modifications

Expliquez la différence entre les commandes suivantes :

- `git pull`
- `git fetch`
git fetch telecharge les nouveates du depository distant sans toucher a mes fichiers tandis que git pull telecharge les nouveautes et les fusionne directement dans ma branche selectionnee

on utilise git pull pour mettre a jour une branche
et git fetch c'est pour comparer les versions 

### Question 8 — Les Pull Requests
une pull request est une demande de modification de la branche principale d'un projet adressee aux proprietaires .
dans un projet il est utilie parcequ'il empeche que des modifications soient apporteees aux projt sans la verification prealable des preneurs des responsablrs  

### Question 9 — Résolution des conflits

 Un conflit git c'est quand deux versions modifient la meme partie du meme fichier.par exemple si on a modifie la meme ligne dans les differentes versioms. pour resoudre le conflit il faut reperer le fichier qui le cause, l'ouvrir et effectuer soit un coix entre les versions soi une fusion des versions.

### Question 10 — Mise en pratique

Vous rejoignez une équipe DevOps. Vous devez ajouter un fichier `presentation.md` contenant une courte présentation de vous-même.

Décrivez, dans le bon ordre, les principales étapes et commandes pour :

1. Récupérer le projet.
aller sur le depot github du projet et copier le lien
se placer dans son dossier de travail a l'aide de gitbash( cd puis mkdir et enfin git init)
2. Créer une branche personnelle.
git branch <nom de la brnche>
git checkout <nom de la branche>
3. Créer et modifier le fichier.
se rendre dans le dossier ou on souhaite le creer a l'aide de cd
puis touch nom.txt
enfin vim nom.txt pour le modifier
4. Préparer et enregistrer les modifications.
git add nom.txt
et git commit -m "modidification"
5. Envoyer la branche sur GitHub.
git push -u origin main <nom de la branche>
6. Créer une Pull Request.
se rendre sur le depot github, copier le lien
apres avoir effectue les modifications et rempli ces etapes , il ya un bandeau jaune qui apparait avec <compare & pull request>

Indiquez les commandes Git nécessaires et expliquez brièvement leur rôle.
git branch <name> pour creer une branche
git checkout pour se positionner sur la branche
touch nom.txt creer un fichier
vim nom.txt pour le modifier
git push pour pousser le projet sur le depot github
---

## 3. Questions de réflexion personnelle

Répondez également aux questions suivantes à la fin de votre document :

**A.** Quel concept Git ou GitHub vous a semblé le plus difficile à comprendre ? Pourquoi ?

Le git push parce qu'il apparaissait trop d'erreur au debut 

**B.** Quelle compétence souhaitez-vous améliorer après cette formation ?
La maitrise de Git

**C.** Comment avez-vous trouvé cette formation ? Qu'avez-vous particulièrement apprécié et que faudrait-il améliorer ?

j'ai trouve la formation interessante. j'ai apprecie le fait de galerer pour comprendre comment Github fonctionnait

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