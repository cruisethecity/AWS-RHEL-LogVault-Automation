# Project: Automated RHEL-to-S3 Log Vault

### **Executive Summary**
I engineered a secure, automated backup pipeline for Red Hat Enterprise Linux (RHEL 9) that synchronizes system logs to Amazon S3. This project demonstrates advanced integration of Linux administration, Bash automation, and AWS security best practices.

### **The Architecture**
* **Compute**: RHEL 9 (Amazon EC2)
* **Storage**: Amazon S3 (Bucket: `kw21-rhel-logs-2026`)
* **Security**: IAM Role with a custom JSON policy enforcing the **Principle of Least Privilege**
* **Automation**: Bash Scripting and Crontab scheduling

### **Technical Deep-Dive**
* **Keyless Security**: Implemented an **IAM Instance Profile**, allowing the EC2 instance to assume a role and fetch temporary security credentials. This eliminates the risk of hardcoded AWS Access Keys.
* **Data Integrity**: Developed a Bash script that utilizes `tar` with administrative privileges to perform high-compression backups of restricted `/var/log` directories.
* **Operational Excellence**: Configured a recurring cron job for **02:00 AM daily execution**, ensuring 100% automated data durability without human intervention.

### **Verification (Proof of Concept)**
The screenshot below verifies the full stack health check, confirming the script logic, active automation schedule, and successful cloud synchronization:

![Full Stack Verification](./image_a80a4d.png)
