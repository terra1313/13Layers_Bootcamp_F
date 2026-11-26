
Programme : Roadmap DevOps
Module : F01 — Git & GitHub
Organisme : 13Layers Academy
Type d'évaluation : Questionnaire individuel
Objectif : Vérifier la compréhension des concepts fondamentaux de Git et GitHub avant de passer aux prochaines étapes de la roadmap DevOps.


2. Questionnaire
### Question 1 — Qu'est-ce que Git ?
  Git est un logiciel qui sauvegarde toutes les version de ton travail.
les avantage : - la possibilité de travaillé en equipe 
               -les test test sans risque 
### Question 2 — Qu'est-ce que GitHub ?
   c'est un site internet ou tu as la possibilite de mettre ton travaille en ligne.
 git est un logicielle qui garde toutes tes version de code tandis que guithub est un site internet pour le partage des versions voulue.
### Question 3 — Qu'est-ce qu'un dépôt Git ?
un dépôt Git (repository) :est un dossier de projet plus son historique 
. Quelle est la différence entre un dépôt local et un dépôt distant ?
 un dépot local fait réference a un dossier visible uniquement par l'utilisateur seul  or un depot distant c'est la copie du dossier sur internet visible par tous ceux qui veulent.
### Question 4 — Les trois commandes fondamentales
le rôle des commandes suivantes et  un exemple d'utilisation pour chacune :

- git add : prépare les fichiers a la sauvegarde  ex: git add . 
- git commit : sauvegarde la version souhaiter avec un message éxplicatif des modification  ex : git commit -m 'ajout de la parge d'acceuil '
- git push : envoie la sauvegarde de l'ordinateur vers git hub  
### Question 5 — Les branches Git
une branche git est une copie du projet ou tu peux travailler sans casser le projet principal . 

Pourquoi est-il préférable de travailler sur une branche dédiée plutôt que de modifier directement la branche principale (main) :pour eviter de penalisee tout le monde et casse le projet principale du groupe .
### Question 6 — Les commits
un commit sauvegarde la version souhaite avec un message indicatif de l'action effectuer 
un exemple : commit -m 'ajout des template' 
 un bon message est important pour permettre de ce reféré  dans le travaille .

### Question 7 — Récupérer les modifications
Expliquez la différence entre les commandes suivantes :

git pull : telecharge les modification sur github et les met directement dans ton projet  celle ci est utilise pour recuperer et appliquer les modifications directement sans verification . 
git fetch : telecharge les modifications mais ne les mets pas dans le projet   celle ci est utilisee pour recuperer et verifier les modifications avant la modifications .


### Question 8 — Les Pull Requests
une Pull Request (PR) : est une demande de verification du projet par qui de droit   
  utilité dans un projet collaboratif : permet de  faire validé le projet par toute l'equipe avant  de l'executer dans main   
les grandes étapes de sa création :
- la creation de la branche et le  travailles sur celle ci  
- puis un git push sur github 
- puis un new pull request 
- s'en suit la validation et le main 
 ###  Question 9 — Résolution des conflits
un conflit Git est lorsqu'une modification est effectuer par deux personne au mémé moment sur un mémé ficher .
 Présentez une situation dans laquelle un conflit peut apparaître : lors d'un git pulll git bloque parceque deux per porne sur une meme ligne on effectuer une modificalion de hello en salut et en bonjour .
les étapes permettant de le résoudre : 
- git montre montre le fichier avecc les deux versions 
- on ouvre le fichiers avec les 2 version ,puis on suprimme les marque existante  
- puis on sauvegarde 
  
### Question 10 — Mise en pratique

Décrivez, dans le bon ordre, les principales étapes et commandes pour :

1. Récupérer le projet : pour cloner le fichier sur github pour travailler en local  le projet on utilise la commande : git clone https://github.com/nom propriétaire du  fichier /nom du projet 
2. Créer une branche personnelle : pour la creation de branche on utilise la comande : 
-  cd suivie du nom de projet  premieremennt pour appeler ou entrer dans le projet .
- git checkout -b nom de la brance pour crer la branche . 
3. Créer et modifier le fichier : on l'effectue directement dans notre editeur et git nous envera une notifivation apres l'enregistrement du fichier 
4. Préparer et enregistrer les modifications ici on utilise 
- git add pour prepare le fichier 
- git commit -m pour enregistre le travaille dans l'historique avec un message 
5. Envoyer la branche sur GitHub on utlise la commande git push -u origin 
6. Créer une Pull Request on valide directement sur github 

Indiquez les commandes Git nécessaires et expliquez brièvement leur rôle.

---

## 3. Questions de réflexion personnelle

Répondez également aux questions suivantes à la fin de votre document :

**A.** Quel concept Git ou GitHub vous a semblé le plus difficile à comprendre : aucun pour le moment 

**B.** Quelle compétence souhaitez-vous améliorer après cette formation : automatisasion et la resolution des probles 

**C.** Comment avez-vous trouvé cette formation : via un camarade 
Qu'avez-vous particulièrement apprécié : le suivie 
 et que faudrait-il améliorer : RAS

 MERCI POUR LA FORMATION 