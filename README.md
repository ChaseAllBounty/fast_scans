# Nmap Scan Script

This Bash script provides an interactive menu for performing various network scans using `nmap`. It's designed for penetration testers or network administrators to quickly conduct reconnaissance on a target IP.

## Features
- **Interactive Menu**: Choose from different types of scans.
- **Custom Target**: Specify the target IP before starting the scans.
- **Multiple Scan Types**:
  - Simple Network Scan
  - OS Detection & Service Version Detection
  - TCP SYN Scan (Stealth Scan)
  - UDP Scan
  - Specific Ports Scan (HTTP, HTTPS, SSH)
  - Host Discovery without Port Scan
  - Scan with Firewall Evasion Techniques
  - Vulnerability Scan using `vulners` script

## Prerequisites
- **Nmap**: This script requires `nmap` to be installed on your system. On most Linux distributions, you can install it via:
  ```bash
  sudo apt-get install nmap

  or with another package manager appropriate for your OS.

    Vulners Script: For the vulnerability scan option, ensure you have the vulners script installed or updated within nmap. You might need to update nmap:
    bash

    sudo apt-get update
    sudo apt-get install nmap


Usage

    Clone the repository or copy the script to your local machine.
    Make the script executable:
    bash

    chmod +x nmap_scan_script.sh

    Run the script:
    bash

    ./nmap_scan_script.sh

    Enter the target IP when prompted.
    Select scan options from the menu by entering the corresponding number.


Notes

    Permissions: Always ensure you have permission to scan the target network or system. Unauthorized scanning can lead to legal repercussions.
    UDP Scan: Be aware that UDP scans can be particularly time-consuming and noisy, potentially alerting network administrators.
    Firewall Evasion: The scan with firewall evasion techniques uses decoy IPs which can be blocked by some firewalls.
    Vulnerability Scanning: The script uses the vulners NSE script which might not catch all vulnerabilities but provides a good starting point.


Disclaimer
This script is for educational and ethical purposes. Use it responsibly and in compliance with applicable laws and regulations.

License
[Choose an appropriate license or state that it's for personal use only]

Contributions
Feel free to fork, clone, and submit pull requests for improvements or additional features!

Contact
[Your contact information or project maintainer's contact]


This `README.md` provides a quick overview, installation instructions, usage examples, and important notes for users of your script. Adjust the sections like license and contact according to your preferences or project requirements.
