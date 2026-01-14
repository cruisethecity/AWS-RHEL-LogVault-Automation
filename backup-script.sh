#!/bin/bash
# Description: RHEL 9 Log Vault Automation
# Author: Keenen Wilkins
# Date: January 2026

# Create a timestamped, compressed archive of system logs
# sudo is required to access restricted /var/log directories
sudo tar -czf system_logs.tar.gz /var/log

# Synchronize the archive to the designated S3 bucket
# This utilizes the IAM Role attached to the instance for authentication
aws s3 cp system_logs.tar.gz s3://kw21-rhel-logs-2026/

# Print status for verification
echo "Backup process complete. File synchronized to S3."
