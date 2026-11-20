# F04 — Workflow officiel GitHub (travail local et remise)

**Ne poussez JAMAIS directement sur `terra1313/13Layers_Bootcamp_F:main` et ne fusionnez pas vous-même la PR.** Une branche existe à l'échelle du dépôt Git entier, même créée depuis le dossier F04.

## Option A — Vous n'avez pas encore de fork ni de clone

1. Allez sur [le dépôt officiel](https://github.com/terra1313/13Layers_Bootcamp_F) et cliquez **Fork**, vers votre compte personnel.
2. Sur **votre ordinateur**, clonez votre fork (remplacez `VOTRE_PSEUDO`).

```bash
git clone https://github.com/VOTRE_PSEUDO/13Layers_Bootcamp_F.git
cd 13Layers_Bootcamp_F
git switch main
cd formations/F04-Reseau-TCP-IP
git switch -c Bootcamp_F04__prenom_nom
mkdir -p devoirs/prenom-nom/preuves
cp templates/RAPPORT_ETUDIANT_F04.md devoirs/prenom-nom/RAPPORT_F04.md
```

## Option B — Vous avez déjà cloné le dépôt / un fork

Depuis **la racine de votre dépôt local**, commencez par enregistrer ou mettre de côté votre travail éventuel. Vérifiez vos remotes :

```bash
git status
git remote -v
```

`origin` doit pointer vers **votre fork**, pas vers `terra1313`. Si vous avez cloné directement le dépôt officiel, créez un fork sur GitHub et configurez votre `origin` pour qu'il pointe vers **votre fork** avant de pousser.

Si `upstream` n'existe pas :

```bash
git remote add upstream https://github.com/terra1313/13Layers_Bootcamp_F.git
```

Puis, sans changements locaux non enregistrés :

```bash
git fetch upstream
git switch -c Bootcamp_F04__prenom_nom upstream/main
cd formations/F04-Reseau-TCP-IP
mkdir -p devoirs/prenom-nom/preuves
cp templates/RAPPORT_ETUDIANT_F04.md devoirs/prenom-nom/RAPPORT_F04.md
```

**Si la branche `Bootcamp_F04__prenom_nom` existe déjà**, ne la recréez pas : vérifiez son état avec `git branch` et mettez-la à jour proprement.

## Étude et livrables
- Suivre [Concevez votre réseau TCP/IP](https://openclassrooms.com/fr/courses/6944606-concevez-votre-reseau-tcp-ip), terminer les chapitres et valider **les 3 quiz au vert**.
- Sauvegarder une ou plusieurs captures prouvant **les 3 quiz réussis et le cours terminé** dans `devoirs/prenom-nom/preuves/`.
- Remplir les 10 réponses du `RAPPORT_F04.md` personnel (questions dans [RAPPORT_REFLEXION_F04.md](RAPPORT_REFLEXION_F04.md)).
- **Ne modifiez ni les consignes, ni les questions officielles, ni les travaux d'autres étudiants.**

## Organisation uniforme DANS VOTRE FORK

```text
formations/F04-Reseau-TCP-IP/devoirs/prenom-nom/
├── RAPPORT_F04.md
└── preuves/
    ├── cours_termine.png
    ├── quiz_1_et_2.png
    └── quiz_3.png
```

Les noms des captures sont des exemples ; un nombre différent est acceptable si **les trois quiz et la fin du cours** sont clairement visibles.

## Enregistrer, pousser et ouvrir la PR

Depuis `formations/F04-Reseau-TCP-IP` :

```bash
git status
git add devoirs/prenom-nom/
git commit -m "docs(F04): rapport TCP-IP et preuves prenom nom"
git push -u origin Bootcamp_F04__prenom_nom
```

Sur GitHub, ouvrez une Pull Request :
- **Source** : votre fork, branche `Bootcamp_F04__prenom_nom`.
- **Destination** : `terra1313/13Layers_Bootcamp_F`, branche `main`.
- **Titre** : `[F04] Prénom Nom — Concevez votre réseau TCP/IP`.
- **Description** : nom, pseudo GitHub, lien du cours, preuve des 3 quiz au vert et emplacement du rapport.

L'étudiant ne clique pas sur **Merge**. Le formateur peut approuver puis fermer sans fusion pour préserver `main`.

**Attention :** l'autorisation d'accès au groupe WhatsApp F04 dépend d'une F03 validée ; la F04 validée donne accès, sur demande, au groupe F05.
