# Rapport F04 — Concevez votre réseau TCP/IP

- **Nom et prénom :** `MEFOTIE KENGNE HILLARY LUCERE`
- **Compte GitHub :** `hillary-dev81`
- **Branche :** `Bootcamp_F04__hillary_mefotie`
- **Date de réalisation :** `25 Novembre 2026`
- **Lien du cours :** https://openclassrooms.com/fr/courses/6944606-concevez-votre-reseau-tcp-ip

## Suivi OpenClassrooms
- [x] Cours terminé.
- [x] Quiz 1 — architecture physique : au vert.
- [x] Quiz 2 — configuration et communication : au vert.
- [x] Quiz 3 — DHCP / DNS : au vert.
- **Chemins des captures dans `preuves/` :**

## Réponses de réflexion
**1. Réseau d'une petite boutique :**

    Pour une boutique possédant 5 ordinateurs et une imprimante partagée, j'installerais :
- Un routeur pour connecter le réseau local à Internet.
- Un switch (commutateur) pour relier les 5 ordinateurs et l'imprimante au réseau.
- Des câbles Ethernet RJ45 pour assurer une connexion stable et rapide.
- Un point d'accès Wi-Fi pour permettre aux appareils mobiles de se connecter sans fil.
Ces équipements permettent de partager les ressources, de communiquer facilement et d'accéder à Internet.


**2. Ethernet ou Wi-Fi :**

    Pour postes sont proches dans un bureau, je privilégierais le câble Ethernet lorsque les ordinateurs sont proches du routeur ou du switch, car il offre :
- Une connexion plus stable.
- Un meilleur débit.
- Une latence plus faible.
- Une meilleure sécurité, car il nécessite un accès physique au réseau.
Le Wi-Fi est plutôt adapté aux appareils mobiles et aux utilisateurs qui ont besoin de se déplacer.


**3. Adresse IP unique :**

    Deux ordinateurs ne doivent pas avoir la même adresse IP, car cela provoquerait un conflit d'adresses IP. Le réseau ne pourrait plus identifier correctement les appareils concernés, ce qui entraînerait des problèmes de communication.

Exemple de réseau privé simple :
- Ordinateur 1 : 192.168.100.10
- Ordinateur 2 : 192.168.100.11
- Ordinateur 3 : 192.168.100.12
- Passerelle : 192.168.100.1
- Masque de sous-réseau : 255.255.255.0


**4. Imprimante inaccessible :**

    un employé ne parvient plus à joindre l'imprimante réseau, mes trois premières vérifications sont les suivantes :

- Vérifier la connexion réseau : s'assurer que l'ordinateur et l'imprimante sont bien connectés au réseau.
- Vérifier l'adresse IP : contrôler que l'imprimante possède une adresse IP correcte et qu'il n'y a pas de conflit.
- Vérifier l'imprimante : s'assurer qu'elle est allumée, qu'elle n'affiche aucune erreur et que son pilote est correctement installé sur l'ordinateur.


**5. Passerelle et Internet :**

    Dans ce diagnostic, la passerelle par défaut permet aux ordinateurs d'envoyer les données vers Internet.

Si les ordinateurs communiquent entre eux mais n'accèdent pas à Internet, il faudrait controler :
- Que l'adresse IP de la passerelle est correctement configurée.
- Que le routeur est allumé et fonctionne correctement.
- Que la connexion Internet du routeur est opérationnelle.


**6. Communication entre réseaux :**

    L'équipement ou fonction assure la communication entre ces deux réseaux est le routeur ou un équipement de couche 3 (switch de niveau 3) qui assure la communication entre les deux réseaux grâce au routage inter-réseaux, qui doit etre configuré avec des règles de sécurité et des autorisations pour contrôler les échanges entre le réseau du personnel et celui des visiteurs.


**7. DHCP et nouveaux salariés :**

    Le DHCP (Dynamic Host Configuration Protocol) est un protocol qui permet d'attribuer automatiquement une configuration réseau ou une adresse IP aux ordinateurs ou terminaux.

Lorsqu'un nouvel ordinateur se connecte au réseau, le serveur DHCP lui attribue automatiquement :
- Une adresse IP.
- Un masque de sous-réseau.
- Une passerelle par défaut.
- Une adresse de serveur DNS.


**8. Résolution des noms et DNS :**

    Dans le cas ou un salarié peut accéder à un serveur avec son adresse IP mais pas avec son nom, je suspecterais le service DNS (Domain Name System), car il permet de traduire les noms de domaine ou les noms des serveurs en adresses IP.

    Si l'accès fonctionne avec l'adresse IP mais pas avec le nom, cela peut indiquer un problème de résolution DNS ou une mauvaise configuration du serveur DNS.


**9. Modèles OSI/TCP-IP et diagnostic :**

    Lors d'une panne, Les modèles OSI et TCP/IP permettent de localiser plus facilement l'origine d'une panne en analysant les différentes couches du réseau. Cette méthode permet de rechercher progressivement la cause du problème et de gagner du temps dans le dépannage.
Par exemple :
- Couche physique : câble débranché, prise réseau défectueuse ou équipement éteint.
- Couche réseau : mauvaise adresse IP, mauvais masque ou problème de passerelle.
- Couche transport : problème de port ou de communication entre applications.
- Couche application : problème de DNS, de serveur web ou de service réseau.


**10. Bénéfices pour la direction :**

Les trois principaux avantages ou benefices que je mettrais en avant sont :

1. Le gain de temps et de productivité : les employés peuvent partager rapidement les fichiers, les imprimantes et les ressources informatiques.
2. La réduction des coûts : plusieurs employés peuvent utiliser les mêmes équipements, ce qui évite les achats inutiles.
3. La sécurité et la fiabilité : un réseau bien conçu protège les données de l'entreprise, facilite les sauvegardes et limite les risques de panne.


## Retour personnel

- Une notion retenue : 

    **J'ai retenu le fonctionnement du modèle TCP/IP, notamment le rôle des adresses IP, du DNS, du DHCP et de la passerelle dans la communication entre les appareils d'un réseau.**


- Une difficulté rencontrée et comment je l'ai résolue :

    **J'ai eu quelques difficultés à comprendre l'adressage IP et le rôle des différentes couches du modèle TCP/IP. Pour les surmonter, j'ai repris les explications du cours et fait des recherches complémentaires**

- Comment ai-je trouvé ce cours ?

    **J'ai trouvé ce cours très intéressant, enrichissant et instructif. Il m'a permis d'acquérir de nouvelles connaissances sur les réseaux informatiques, de mieux comprendre le fonctionnement de la communication entre les machines et de développer mes compétences en réseau TCP/IP.**


## Checklist avant la PR
- [x] 10 réponses rédigées personnellement
- [x] Captures du bon cours et des 3 quiz au vert
- [x] Dossier F04 personnel uniquement modifié
- [x] Aucune donnée privée ni token dans les fichiers
- [x] Push sur mon fork et PR vers le dépôt officiel
