#!/bin/bash

# Définir les variables
SOURCE_DIR="/home/schawil/Sauvegardes/R1"
TARGET_DIR="/home/MOCmefire/Sauvegardes/R2_diff"
REMOTE_USER="Mocmefire"
REMOTE_HOST="37.60.244.227"

# Effectuer une sauvegarde différentielle avec rsync
rsync -av --ignore-existing "$SOURCE_DIR" "$REMOTE_USER@$REMOTE_HOST:$TARGET_DIR"

# Journaliser
echo "$(date '+%Y-%m-%d %H:%M:%S') - Sauvegarde différentielle effectuée de $SOURCE_DIR vers $TARGET_DIR" >> /var/log/backup_diff.log

