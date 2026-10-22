# Règles de contribution — 13Layers Academy

## Règle principale
La branche `main` accueille les supports **officiels**, pas l'archive des devoirs étudiants. Les travaux se réalisent dans les forks personnels. Une approbation pédagogique **n'implique pas de merge**.

## Remettre un devoir
1. Faire un **fork** du dépôt `terra1313/13Layers_Bootcamp_F`.
2. Cloner son fork et créer une branche `Bootcamp_FXX__prenom_nom`, exemple `Bootcamp_F02__jean_doe`.
3. Travailler uniquement dans `devoirs/prenom-nom/FXX/` sur son fork. Réunir `REPONSES.md`, `RAPPORT_TP.md`, les scripts demandés et les preuves non sensibles.
4. Faire des commits descriptifs, pousser la branche, puis ouvrir une Pull Request **de son fork vers la branche `main` du dépôt officiel**.
5. Titre obligatoire : `[F02] Prénom Nom — Linux` (adapter au module). Remplir le template PR, joindre le lien du cours et décrire la preuve.
6. Ne pas fusionner soi-même. Le formateur peut demander une correction, valider avec un commentaire et fermer la PR **sans fusion**.

## Qualité, sécurité et respect
- Aucun secret, token, clé SSH, mot de passe ni capture révélant des données sensibles.
- Ne pas modifier les supports officiels dans une PR de devoir.
- Une PR par étudiant **et par formation**.
- Interdiction d'exécuter des commandes destructives sur un serveur partagé ou de production.
- Aucune note n'est garantie par un contrôle automatique : l'évaluation appartient au formateur.
- Ne pas modifier les rendus historiques déjà intégrés au dépôt.

## Contributions pédagogiques
Les améliorations aux cours passent par une branche dédiée (`academy/...`) et une PR indépendante des devoirs.
