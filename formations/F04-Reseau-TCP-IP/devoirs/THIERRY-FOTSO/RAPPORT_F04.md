# Rapport F04 — Concevez votre réseau TCP/IP

- **Nom et prénom :** `FOTSO THIERRY JOEL`
- **Compte GitHub :**`pagnus406`
- **Branche :** `Bootcamp_F04__prenom_nom`
- **Date de réalisation :**`24/11/2026`
- **Lien du cours :** https://openclassrooms.com/fr/courses/6944606-concevez-votre-reseau-tcp-ip

## Suivi OpenClassrooms
- [ok] Cours terminé.
- [ok] Quiz 1 — architecture physique : au vert.
- [ok] Quiz 2 — configuration et communication : au vert.
- [ok] Quiz 3 — DHCP / DNS : au vert.
- **Chemins des captures dans `preuves/` :**

## Réponses de réflexion
**1. Réseau d'une petite boutique :**
Comme equipement de base j'installerais un switch pour relier les differents equipements au reseau via des cables RJ45,Et un routeur pour connecter le reseau local a internet

**2. Ethernet ou Wi-Fi :**
Je privilegierais le cable ethernet parceque les equipements sont proches. La wifi n'est preferable que lorsqu'on veut permettre la mobilite des appareils

**3. Adresse IP unique :**
Deux machines utilsant la meme adresse IP peut creer un conflit d'adresses empechant les appareils de communiquer correctement.
EXPLE: reseau: 192.168.12.0/24
        pc1: 192.168.12.10
        pc2: 192.168.12.20
        routeur:192.168.12.1

**4. Imprimante inaccessible :**
-verifier que l'imprimante est allumee et connectee au reseau
-verifier que l'imprimante possede une adresse ip valide
-controler la configuration de l'imprimante

**5. Passerelle et Internet :**
La passerelle permet aux ordinateurs de communiquer avec des equipements situes dans un reseau exterieur, notemmment internet dans ce cas-ci.

**6. Communication entre réseaux :**
L'equipement qui assure la communication entre deux reseaux differents est le routeur

**7. DHCP et nouveaux salariés :**
DHCP peut attribuer a chaque nouvelle machine une adresse ip dans la plage qu'on aura definit au prealable

**8. Résolution des noms et DNS :**
je suspecte le DNS car c'est lui qui traduit les noms de domaine en adresse ip.

**9. Modèles OSI/TCP-IP et diagnostic :**
ils permettent de classer les problemes selon differentes couches. On peut ainsi rechercher progressivement l'origine de la panne en parcourant les diffentes couches une a une 

**10. Bénéfices pour la direction :**
les avantages que je mettrais en avant sont les suivants:
    -La reduction des depenses: car le partage d'equipement evite le rachat inutile de ces derniers
    -La securite : car un reseau bien configure permet de proteger ses donnees, controler les acces et de limiter les risques
    -La productivite: Les employes peuvent communiquer rapidement et s'echanger des fichiers

## Retour personnel
- Une notion retenue : 
le DHCP
- Une difficulté rencontrée et comment je l'ai résolue :
Pas vraiment de difficulte.
- Comment ai-je trouvé ce cours ?
 j'ai particulierement apprecie. Je crois que c'est le cours ou j'ai appris le plus de choses jusqu'ici

## Checklist avant la PR
- [ok] 10 réponses rédigées personnellement
- [ok] Captures du bon cours et des 3 quiz au vert
- [ok] Dossier F04 personnel uniquement modifié
- [ok] Aucune donnée privée ni token dans les fichiers
- [ok] Push sur mon fork et PR vers le dépôt officiel
