#!/usr/bin/env bash
set -euo pipefail
echo "=== Informations systeme ==="
date
printf 'utilisateur : '
whoami
printf 'repertoire courant : '
pwd
echo "espace disque :"
df -h
