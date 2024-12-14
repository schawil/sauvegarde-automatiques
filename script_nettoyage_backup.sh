#!/bin/bash

# Définir les variables
TARGET_DIR="/home/MOCmefire/Sauvegardes/R2_diff"
REMOTE_USER="Mocmefire"
REMOTE_HOST="37.60.244.227"

# Supprimer les sauvegardes différentielles âgées de plus de 7 jours
ssh "$REMOTE_USER@$REMOTE_HOST" "find $TARGET_DIR/diff -type f -mtime +7 -exec rm -f {} \;"

# Supprimer les sauvegardes hebdomadaires âgées de plus de 4 semaines
ssh "$REMOTE_USER@$REMOTE_HOST" "find $TARGET_DIR/weekly -type f -mtime +28 -exec rm -f {} \;"

# Supprimer les sauvegardes mensuelles âgées de plus de 6 mois
ssh "$REMOTE_USER@$REMOTE_HOST" "find $TARGET_DIR/monthly -type f -mtime +180 -exec rm -f {} \;"

# Journaliser
echo "$(date '+%Y-%m-%d %H:%M:%S') - Nettoyage des sauvegardes effectué" >> /var/log/backup_cleanup.log
