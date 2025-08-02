#!/data/data/com.termux/files/usr/bin/bash
echo "[🔧] Initializing EchoNull Arsenal Deployment..."
pkg update -y && pkg upgrade -y
pkg install -y git curl wget unzip proot unstable-repo
pkg install -y nmap hydra sqlmap nikto metasploit aircrack-ng ettercap john wpscan burpsuite enum4linux recon-ng dnsenum hping3 netcat
pkg install -y clamav lynis rkhunter net-tools ufw chkrootkit auditd fail2ban tripwire logwatch sysstat iptables snort
echo "[✅] EchoNull Arsenal deployed."
