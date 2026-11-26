# Rapport F04 — Concevez votre réseau TCP/IP

- **Nom et prénom :*BEHALAL HERMANN*
- **Compte GitHub :*https://github.com/kolmadr*
- **Branche :** `Bootcamp_F04__hermann_behalal`
- **Date de réalisation :*25/11/2026*
- **Lien du cours :** https://openclassrooms.com/fr/courses/6944606-concevez-votre-reseau-tcp-ip

## Suivi OpenClassrooms
- [oui] Cours terminé.
- [oui] Quiz 1 — architecture physique : au vert.
- [oui] Quiz 2 — configuration et communication : au vert.
- [oui] Quiz 3 — DHCP / DNS : au vert.
- **Chemins des captures dans `preuves/` :*oui*

## Réponses de réflexion
**1. Réseau d'une petite boutique :**
Il faut un reseau Local(LAN) de base.cela inclut un routeur,un switch,des cable Ethernet, et une box pour les appareils mobiles.
Tous les appareils doivent etre connectes a ce meme reseau pour communiquer.

**2. Ethernet ou Wi-Fi :**
L'ethernet est recommande pour les postes fixes car plus stable,plus rapide et securise.Le wiFi est preferable pour les appareils mobiles
pour plus de flexibilite.

**3. Adresse IP unique :**
une adresse ip doit etre unique dans un reseau donne.

**4. Imprimante inaccessible :**
il faut verifier l'alimentation,si le pare-feu de l'ordinateur ne bloque pas l'impression,ou si le pilote est correctement installe.

**5. Passerelle et Internet :**
la passerelle par defaut (souvent routeur) est la "porte de sortie" du reseau local.c'est par elle que transitent toutes les donnees destinees a
l'exterieur(Internet).sans elle,les appareils ne peuvent communiquer qu'entre eux a l'interieur du reseau local.

**6. Communication entre réseaux :**
Ce sont les routeurs qui permettent cette communication.ILs recoivent les paquets de donnees,regardent l'adresse ip de destination,et les envoient
vers le bon reseau (le prochain routeur) jusqu'a atteindre la destination finale.

**7. DHCP et nouveaux salariés :**
le DHCP distribue automatiquement les adresses ip,le masque sous resaeau,la passerelle et les DNS sur chaque nouvel ordinateur ou smarphone.

**8. Résolution des noms et DNS :**
Le DNS est l'annuaire d'internet ,il traduit les noms de domaine lisibles par l'humain en adresse ip lisibles par la machine.

**9. Modèles OSI/TCP-IP et diagnostic :**
ces modeles permettent de diagnostiquer les pannnes methodiquement.AU lieu de chercher au hazard,on procede pa elimination:la prise est elle branchee?
le port est-il ouvert? cela permet d'isoler le probleme rapidement.

**10. Bénéfices pour la direction :**
un reseau bien concu permet de partager des ressources couteuses(imprimantes,acces internet unique),partager de fichiers rapidement et de centraliser la
securite et les sauvegardes.

## Retour personnel
- Une notion retenue :L'adresse mac d'un equipement reseau ou terminal est unique.Tandis que son adresse ip  depend d'un reseau donnee.
- Une difficulté rencontrée et comment je l'ai résolue :j'ai eu des difficultes a apprehender l'adresse mac.je pensais que le switch s'interessait au adresse ip
mais j'ai pu decouvrir le concept de trame ethernet axe sur l'adresse mac pour la circulation des paquets dans un LAN.
- Comment ai-je trouvé ce cours ?le cours est pedagogique et les schema de l'architerture reseau aident a visualiser les concepts abstraits.

## Checklist avant la PR
- [oui] 10 réponses rédigées personnellement
- [oui] Captures du bon cours et des 3 quiz au vert
- [oui] Dossier F04 personnel uniquement modifié
- [oui] Aucune donnée privée ni token dans les fichiers
- [oui] Push sur mon fork et PR vers le dépôt officiel
