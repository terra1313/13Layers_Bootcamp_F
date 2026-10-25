#!/usr/bin/env bash
set -euo pipefail

echo "Date et heure      : $(date)"
echo "Utilisateur courant : $(whoami)"
echo "Répertoire courant  : $(pwd)"
echo "Version du noyau   : $(uname -r)"

echo "Espace disque disponible :"
df -h
