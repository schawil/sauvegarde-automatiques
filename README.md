# Scripts de Sauvegardes Automatisées

Ce projet contient des scripts Bash pour automatiser les sauvegardes de données entre deux serveurs.

## Structure du projet

- `script_sauvegarde_full.sh` : Script pour effectuer une sauvegarde complète.
- `script_sauvegarde_diff.sh` : Script pour effectuer une sauvegarde différentielle.
- `script_nettoyage_backup.sh` : Script pour nettoyer les anciennes sauvegardes.
- `crontab.txt` : Exemple de configuration crontab pour automatiser les tâches.

## Instructions

1. Placez les scripts sur le serveur source.
2. Assurez-vous que les chemins des répertoires et des utilisateurs sont correctement configurés.
3. Configurez la crontab pour automatiser les sauvegardes :
   ```bash
   crontab crontab.txt
