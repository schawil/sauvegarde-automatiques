#!/bin/bash

# Définir les variables
SOURCE_DIR="/home/schawil/Sauvegardes/R1"
TARGET_DIR="/home/MOCmefire/Sauvegardes/R2"
REMOTE_USER="MOCmefire"
REMOTE_HOST="37.60.244.227"

# Effectuer une sauvegarde complète avec rsync
rsync -av --delete "$SOURCE_DIR" "$REMOTE_USER@$REMOTE_HOST:$TARGET_DIR"

# Journaliser
echo "$(date '+%Y-%m-%d %H:%M:%S') - Sauvegarde complète effectuée de $SOURCE_DIR vers $TARGET_DIR" >> /var/log/backup_full.log
