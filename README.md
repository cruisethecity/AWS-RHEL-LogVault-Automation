# Project: The RHEL 9 Cloud Log Vault

### **Objective**
I engineered a secure, automated backup pipeline for Red Hat Enterprise Linux (RHEL 9) that compresses system logs and synchronizes them to Amazon S3. This project demonstrates integration between Linux administration, Bash scripting, and AWS IAM security best practices.

### **Technical Architecture**
* **Compute**: RHEL 9 (Amazon EC2)
* **Storage**: Amazon S3 (Log Vault Bucket)
* **Security**: IAM Role with a custom JSON policy enforcing the **Principle of Least Privilege**
* **Automation**: Bash Scripting and Crontab

### **Key Features**
* **Keyless Security**: Implemented an IAM Instance Profile, allowing the server to assume a role and fetch temporary credentials. This eliminates the risk of hardcoded AWS Access Keys.
* **Efficient Backup**: Utilized a Bash script to perform high-compression `tar` backups of restricted log directories.
* **Operational Excellence**: Scheduled a recurring cron job for **02:00 AM daily execution**, ensuring 100% automated data durability.

### **Verification (Proof of Concept)**
The screenshot below confirms the full stack health check: 
1. The logic of the **Bash Script**.
2. The active state of the **Crontab schedule**.
3. The successful arrival of the backup file in **Amazon S3**.
