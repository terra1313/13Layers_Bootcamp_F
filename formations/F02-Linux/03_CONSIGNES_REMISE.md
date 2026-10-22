# F02 — Consignes officielles de remise

## Prérequis
- Un compte GitHub, Git installé et un environnement Linux personnel.
- Lecture du [règlement de contribution](../../CONTRIBUTING.md).

## Étapes
1. Faites un **fork** du dépôt officiel `terra1313/13Layers_Bootcamp_F`, puis clonez votre fork.
2. Créez votre branche personnelle : `git switch -c Bootcamp_F02__prenom_nom`.
3. Dans votre **fork uniquement**, créez :
   ```text
   devoirs/prenom-nom/F02/
   ├── REPONSES_F02.md
   ├── RAPPORT_TP.md
   ├── FICHE_SUIVI.md
   ├── scripts/
   │   ├── demo.sh
   │   └── system_info.sh
   └── preuves/                 # facultatif, captures sans données sensibles
   ```
4. Copiez le modèle [TEMPLATE_LIVRABLE.md](../../templates/TEMPLATE_LIVRABLE.md) dans `FICHE_SUIVI.md`, remplissez-le et fournissez les preuves demandées.
5. Vérifiez vos scripts (`bash -n scripts/*.sh` depuis le dossier F02), puis exécutez-les dans un environnement non critique.
6. Validez et envoyez vos changements :
   ```bash
   git add devoirs/prenom-nom/F02
   git commit -m "feat(F02): remise Linux prenom nom"
   git push -u origin Bootcamp_F02__prenom_nom
   ```
7. Créez une PR **depuis votre fork vers `terra1313/13Layers_Bootcamp_F:main`**, avec le titre `[F02] Prénom Nom — Linux`.

## Évaluation
Le formateur examine les fichiers, les scripts et les preuves. Après validation, il peut approuver/commenter et **fermer sans fusion**, afin de préserver `main`. Ne fusionnez jamais vous-même une PR de devoir.

## Retour personnel
Expliquez : ce que vous avez appris, vos difficultés, et **comment vous avez trouvé cette formation**.

**Ne publiez jamais de mots de passe, clés SSH, tokens ou informations confidentielles.**
