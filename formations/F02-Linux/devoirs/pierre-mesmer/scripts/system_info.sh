#!/usr/bin/env bash
set -euo pipefail

echo "INFORMATIONS DU SYSTÈME"

echo "Date et heure actuelle :"
date

echo "Utilisateur courant :"
whoami

echo "Le répertoire courant :"
pwd

echo "La version du noyau"
uname -r

echo "Détaille du disque"
df -h

echo "FIN DU RAPPORT"