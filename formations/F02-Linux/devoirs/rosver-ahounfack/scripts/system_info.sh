#!/usr/bin/env bash
set -euo pipefail

echo "=== Informations Système ==="
echo "Date : $(date)"
echo "Utilisateur : $(whoami)"
echo "Répertoire courant : $(pwd)"
echo "Version du noyau : $(uname -r)"
echo "Espace disque :"
df -h