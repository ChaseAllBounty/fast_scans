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
This project is licensed under the ISC License - see the LICENSE.md file for details.

Contributions
Feel free to fork, clone, and submit pull requests for improvements or additional features!

Contact
bountychaser@rbx.run (mailto:bountychaser@rbx.run)


And here's the `LICENSE.md` for the ISC License:

```markdown
ISC License

Copyright (c) 2024, Bountychaser

Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.


These documents are now tailored to reflect your contact information, the current year, your name, and the ISC License.
