# Rapport F04 — Concevez votre réseau TCP/IP

- **Nom et prénom :** SIEGNING SILAURE
- **Compte GitHub :** silaure
- **Branche :** `Bootcamp_F04__silaure_siegning`
- **Date de réalisation :** 26/11/2026
- **Lien du cours :** https://openclassrooms.com/fr/courses/6944606-concevez-votre-reseau-tcp-ip

## Suivi OpenClassrooms
- [ OUI ] Cours terminé.
- [ OUI ] Quiz 1 — architecture physique : au vert.
- [ OUI ] Quiz 2 — configuration et communication : au vert.
- [ OUI] Quiz 3 — DHCP / DNS : au vert.
- **Chemins des captures dans `preuves/` :**

## Réponses de réflexion
**1. Réseau d'une petite boutique :**
LES EQUIPEMENTS RESEAUX A INSTALLER:
-LES CABLES ETHERNET RJ45: pour connecter les terminaux au SWITCH
-UN SWICH: pour relier les 05 terminaux et imprimantes entre eux
-UN ROUTEUR: qui sera la passerelle pour permettre aux machines d'acceder a internet

**2. Ethernet ou Wi-Fi :**
ETHERNET: parce que c'est securise et plus stables pour les petites distances

**3. Adresse IP unique :**
Pour eviter les CONFLITS D'ADRESSES
    EXEMPLES DE RESEAUX PRIVEE SIMPLES:
 - 192.168.1.1: adresse du routeurs ou de la box internet
 - 192.168.1.2 - 192.168.1.254: adresse des differents terminaux

**4. Imprimante inaccessible :**
 TROIS  PREMIERES VERIFICATIONS: 
 - PING de la machine a l'adresse IP de l'imprimante
 - verifiers le cables 
 - verifier si le PC et l'IMPRIMANTE sont dans le meme RESEAU

**5. Passerelle et Internet :**
ROLE DE LA PASSERELLE PAR DEFAUT:
  c'est la passerelle qui route les terminaux connectes dans un reseau a acceder a internet

**6. Communication entre réseaux :**
c'est le ROUTEUR qui assure la communication entre 2 reseaux ou encore un PARE-FEU POUR PLUS DE SECURITE


**7. DHCP et nouveaux salariés :**
le DHCP(DINAMYC HOST CONTROL PROTOCOL) est un protocole qui attribue automatiquement les adresses IP aux equipements connectes dans un reseau lorsqu'il est configurer sur un serveur

**8. Résolution des noms et DNS :**
il s'agit ici du DNS(DOMAIN NAME SERVICES) il consiste a traduire les adresses IP en NOM DE DOMAINE

**9. Modèles OSI/TCP-IP et diagnostic :**
pour nous aider a trouver les pannes dans un reseau le modele TCP/IP nous aides beaucoup 
  le diagnostique commence de:
- la couche PHYSIQUE  par les cable, prises wifi
- la couche RESEAU verification de l'adresse IP et de la passerelle par defaut
- la couche APPLICATION pour verifier si la panne provient du coter serveur

**10. Bénéfices pour la direction :**

## Retour personnel
- Une notion retenue : j'ai retenu le concpt de DHCP comment se comporte le serveur lorsqu'une nouvelle machine vient se connecter au reseau 
- le concept de DNS 

- Une difficulté rencontrée et comment je l'ai résolue : je n'ai pas eu de difficulter au long de ce cour 
- Comment ai-je trouvé ce cours ? plutot satisfesant avec les concept cles 

## Checklist avant la PR
- [oui] 10 réponses rédigées personnellement
- [oui] Captures du bon cours et des 3 quiz au vert
- [oui] Dossier F04 personnel uniquement modifié
- [oui] Aucune donnée privée ni token dans les fichiers
- [oui ] Push sur mon fork et PR vers le dépôt officiel