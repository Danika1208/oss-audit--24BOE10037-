# Open Source Software (OSS) Audit Project

## Overview
This project is a part of the OSS Capstone assignment. It demonstrates the use of Linux shell scripting to analyze system information, inspect software packages, audit directories, analyze log files, and generate an open-source manifesto.

All scripts were executed in a Linux environment using GitHub Codespaces.

## Environment Used
- Platform: GitHub Codespaces  
- OS: Linux (Ubuntu-based)  
- Language: Bash Scripting  
- Software Focus: Python  


## Project Structure
├── script1_system_info.sh
├── script2_package_inspector.sh
├── script3_disk_auditor.sh
├── script4_log_analyzer.sh
├── script5_manifesto.sh
└── README.md

## Learning Outcomes
- Understanding of Linux environment
- Shell scripting fundamentals
- File handling and permissions
- Log analysis techniques
- Open-source philosophy


## Scripts Description

###  Script 1: System Identity Report
- Displays system information
- Shows current user, date, and uptime
- Prints student details in output

---

###  Script 2: FOSS Package Inspector
- Checks if a package is installed
- Displays version and details
- Handles installed and non-installed packages
- Includes case-based philosophy notes

---

### Script 3: Disk and Permission Auditor
- Audits important system directories
- Displays size and permissions
- Includes Python configuration directory check

---

### Script 4: Log File Analyzer
- Analyzes log files for a keyword (default: "error")
- Counts occurrences
- Displays last 5 matching lines
- Includes retry logic for empty files

---

### Script 5: Open Source Manifesto Generator
- Takes user input
- Generates a personalized manifesto
- Saves output to a file
- Displays generated content

---

##  How to Run Scripts

Use the following commands in terminal:

```bash
- bash script1_system_info.sh
- bash script2_package_inspector.sh
- bash script3_disk_auditor.sh
- bash script4_log_analyzer.sh /var/log/dpkg.log
- bash script5_manifesto.sh

This project demonstrates practical usage of open-source tools and Linux scripting. It highlights the importance of automation, transparency, and collaboration in open-source ecosystems.
