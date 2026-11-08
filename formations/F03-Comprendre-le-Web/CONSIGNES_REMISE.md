# F03 — Consignes de remise : Comprendre le Web

## Étape 1 — Préparer GitHub en local

1. Sur [le dépôt officiel](https://github.com/terra1313/13Layers_Bootcamp_F), cliquez sur **Fork** afin d'obtenir **votre propre copie** du dépôt.
2. Clonez votre fork sur votre ordinateur (remplacez `VOTRE_PSEUDO` par votre identifiant GitHub).
3. **Entrez dans le dossier F03 puis créez une branche AVANT toute modification** :

```bash
git clone https://github.com/VOTRE_PSEUDO/13Layers_Bootcamp_F.git
cd 13Layers_Bootcamp_F
git switch main
git pull origin main
cd formations/F03-Comprendre-le-Web
git switch -c Bootcamp_F03__prenom_nom
mkdir -p devoirs/prenom-nom/preuves
```

Exemple : `Bootcamp_F03__jean_doe`. Une branche Git s'applique au dépôt entier, même lorsqu'elle est créée depuis le dossier F03. **Ne modifiez aucun autre module et ne créez aucun dossier à la racine.**

## Étape 2 — Suivre OpenClassrooms

Cours obligatoire : **[Comprendre le Web](https://openclassrooms.com/fr/courses/1946386-comprendre-le-web)**.

- Terminez tous les chapitres.
- Validez les **4 quiz** (tous les indicateurs doivent apparaître **au vert**).
- Faites **une ou plusieurs captures d'écran** montrant les quatre quiz validés ainsi que la fin de la formation.
- Masquez les informations personnelles non nécessaires.

**Aucun questionnaire, TP, script, développement de site ou exercice additionnel n'est demandé.** Le seul rendu exigé est la **preuve de fin de formation et des quiz**.

## Étape 3 — Ranger les captures

Placez les images dans **votre fork personnel**, selon cette structure :

```text
formations/
└── F03-Comprendre-le-Web/
    └── devoirs/
        └── prenom-nom/
            └── preuves/
                ├── openclassrooms_formation_terminee.png
                ├── openclassrooms_quiz_1_et_2.png
                └── openclassrooms_quiz_3_et_4.png
```

**Ce sont des noms d'exemple :** le nombre de captures peut varier si chacune montre les éléments demandés. Aucun autre fichier de devoir n'est requis.

## Étape 4 — Pousser votre branche sur VOTRE fork

Depuis `formations/F03-Comprendre-le-Web` :

```bash
git status
git add devoirs/prenom-nom/preuves/
git commit -m "docs(F03): preuve OpenClassrooms prenom nom"
git push -u origin Bootcamp_F03__prenom_nom
```

Vérifiez que `origin` est **votre fork**, et **pas** `terra1313/13Layers_Bootcamp_F`.

Sur GitHub, créez une Pull Request depuis votre branche personnelle vers `terra1313/13Layers_Bootcamp_F:main` :

- **Titre** : `[F03] Prénom Nom — Comprendre le Web`
- **Description** : nom, compte GitHub, lien du cours, confirmation des 4 quiz au vert, chemin des captures.
- **Ne cliquez jamais sur Merge** : seul le formateur décide et peut fermer la PR après validation **sans l'intégrer à main**.

## Checklist
- [ ] Cours OpenClassrooms « Comprendre le Web » terminé
- [ ] Les **4 quiz** sont **au vert**
- [ ] Captures lisibles de la progression terminée et des quiz
- [ ] Captures déposées sous `formations/F03-Comprendre-le-Web/devoirs/prenom-nom/preuves/`
- [ ] Travail réalisé dans mon fork et sur `Bootcamp_F03__prenom_nom`
- [ ] PR créée, aucun push direct ni merge sur `main`

**13Layers Academy — Learn, Build, Collaborate.**
