#!/bin/bash
# Name: RHEL Log Vault Script
# Purpose: Compresses system logs and pushes them to S3

echo "Starting the secure backup process..."

# Create a compressed 'tarball' of the log directory
sudo tar -czf system_logs.tar.gz /var/log

# Push the file to S3 using our IAM Bridge
aws s3 cp system_logs.tar.gz s3://kw21-rhel-logs-2026/

echo "Backup uploaded successfully to the Cloud!"
