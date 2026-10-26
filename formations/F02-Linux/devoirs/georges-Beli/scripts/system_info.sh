#!/usr/bin/env bash
      set -euo pipefail

      echo "=== DIAGNOSTIC SYSTEME ==="
      echo "Date et heure : $(date)"
      echo "Utilisateur : $(whoami)"
      echo "Répertoire courant : $(pwd)"
      echo "Noyau Linux : $(uname -r)"
      echo ""
      echo "=== ESPACE DISQUE ==="
      df -h /
