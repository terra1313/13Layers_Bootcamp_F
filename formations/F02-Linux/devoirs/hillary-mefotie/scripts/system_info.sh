#!/usr/bin/env bash
set -euo pipefail

echo " INFORMATIONS SYSTÈME "

echo "Date :"
date

echo "Utilisateur connecté :"
whoami

echo "Répertoire courant :"
pwd

echo "Version du noyau Linux :"
uname -r

echo "Espace disque :"
df -h

echo " FIN DU RAPPORT "
