#!/usr/bin/env bash
set -euo pipefail

echo "================================="
echo "===    INFORMATION SYSTEME    ==="
echo "================================="
echo "Date et heure           : $(date)"
echo "utilisateur connecte    : $(whoami)"
echo "Repertoire courant      : $(pwd)"*
echo "version du noyau        : $(uname -r)"
echo ""
echo "---  Espace des disques ---"
df -h
