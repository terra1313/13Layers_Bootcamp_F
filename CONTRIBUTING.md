# Règles de contribution — 13Layers Academy

## Règle absolue : ne pas toucher à `main`

**Aucun étudiant ne doit pousser directement, fusionner sa PR, ni modifier les supports pédagogiques dans `main`.** Le dépôt principal publie les cours officiels ; les étudiants travaillent sur **leur propre fork**. Le formateur est seul responsable de l'intégration éventuelle de travaux dans le dépôt officiel.

## Convention universelle

- Module : `formations/FXX-Nom-du-module/`
- Branche : `Bootcamp_FXX__prenom_nom` (deux traits de soulignement après le code)
- Dossier personnel dans votre fork : `formations/FXX-Nom-du-module/devoirs/prenom-nom/`
- Une Pull Request par étudiant et par module vers `terra1313/13Layers_Bootcamp_F:main`.
- **Une PR peut être approuvée puis fermée sans fusion** après évaluation.

## Pour F03 « Comprendre le Web »

1. Forkez le dépôt officiel, clonez votre fork.
2. Entrez **en local** dans `formations/F03-Comprendre-le-Web`.
3. Créez `Bootcamp_F03__prenom_nom` **avant de changer les fichiers**.
4. Suivez [Comprendre le Web — OpenClassrooms](https://openclassrooms.com/fr/courses/1946386-comprendre-le-web) : cours terminé et **4 quiz au vert**.
5. Placez **uniquement les captures de preuve** dans `devoirs/prenom-nom/preuves/` sur votre fork.
6. Poussez vers votre fork et ouvrez une PR : `[F03] Prénom Nom — Comprendre le Web`.

**F03 n'a ni questionnaire, ni TP, ni script supplémentaire.** Voir les [consignes F03](formations/F03-Comprendre-le-Web/CONSIGNES_REMISE.md).

## Qualité et sécurité

- Ne publiez aucun secret, jeton, mot de passe, clé SSH ni donnée personnelle inutile.
- Ne modifiez pas les devoirs des autres apprenants.
- Pour F01 et F02, les consignes existantes de ces formations restent applicables.
- Les formateurs modifient les cours via une branche `academy/...` et une PR administrative.

**13Layers Academy — Learn, Build, Collaborate.**
