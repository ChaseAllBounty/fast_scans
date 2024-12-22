#!/bin/bash

# Function to display a header
function header() {
    echo -e "\n### $1 ###"
}

# Function to check if nmap is installed
function check_nmap() {
    if ! command -v nmap &> /dev/null
    then
        echo "Nmap could not be found. Please install nmap to use this script."
        exit 1
    fi
}

# Check for nmap installation
check_nmap

# Function for menu selection
function menu() {
    echo "Choose scan type:"
    echo "1. Simple Network Scan"
    echo "2. OS detection and Service Version Detection"
    echo "3. TCP SYN Scan (Stealth Scan)"
    echo "4. UDP Scan (Warning: can be slow and noisy)"
    echo "5. Scan for specific ports (HTTP, HTTPS, SSH)"
    echo "6. Host Discovery without Port Scan"
    echo "7. Scan with Firewall Evasion techniques"
    echo "8. Scan for known vulnerabilities"
    echo "9. Exit"
    read -p "Enter your choice [1-9]: " choice
}

# Read target IP
read -p "Enter target IP: " target_ip

while true; do
    menu
    case $choice in
        1)
            header "Scanning for open ports"
            nmap -F $target_ip
            ;;
        2)
            header "OS detection and Service Version Detection"
            nmap -O -sV $target_ip
            ;;
        3)
            header "TCP SYN Scan"
            nmap -sS $target_ip
            ;;
        4)
            header "UDP Scan (This can be slow)"
            nmap -sU -F $target_ip
            ;;
        5)
            header "Scan for specific ports (HTTP, HTTPS, SSH)"
            nmap -p 22,80,443 $target_ip
            ;;
        6)
            header "Host Discovery without port scan"
            nmap -sn $target_ip/24
            ;;
        7)
            header "Scan with firewall evasion techniques"
            nmap -f -D RND:10 $target_ip
            ;;
        8)
            header "Scan for known vulnerabilities (requires 'vulners' script)"
            nmap --script vulners -sV $target_ip
            ;;
        9)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done
