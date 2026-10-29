#!/usr/bin/env bash
set -euo pipefail

echo "===== INFORMATIONS DU SYSTÈME ====="

echo "Date et heure : $(date)"
echo "Utilisateur : $(whoami)"
echo "Répertoire courant : $(pwd)"
echo "Version du noyau : $(uname -r)"

echo ""
echo "===== ESPACE DISQUE ====="
df -h
