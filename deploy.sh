#!/data/data/com.termux/files/usr/bin/bash

echo "[🔧] Initializing EchoNull Arsenal Deployment..."

pkg update -y && pkg upgrade -y
pkg install -y git curl wget unzip proot unstable-repo

echo "[🔴] Installing Offensive Modules..."
pkg install -y nmap hydra sqlmap nikto metasploit aircrack-ng ettercap john wpscan burpsuite enum4linux recon-ng dnsenum hping3 netcat

echo "[🔵] Installing Defensive Modules..."
pkg install -y clamav lynis rkhunter net-tools ufw chkrootkit auditd fail2ban tripwire logwatch sysstat iptables snort

SOURCE_DIR="$HOME/echonull/EchoNullOps"
mkdir -p "$SOURCE_DIR"

cat > "$SOURCE_DIR/SecureIT-Arsenal.sh" <<INNER
#!/data/data/com.termux/files/usr/bin/bash
echo "[🔐] EchoNull Arsenal Launcher"
echo "----------------------------------"
echo "[🔴] Red Team Tools:"
echo " - sqlmap, nikto, hydra, nmap, metasploit"
echo " - aircrack-ng, ettercap, john, wpscan, burpsuite"
echo " - enum4linux, recon-ng, dnsenum, hping3, netcat"
echo ""
echo "[🔵] Blue Team Tools:"
echo " - clamav, lynis, rkhunter, net-tools, ufw"
echo " - chkrootkit, auditd, fail2ban, tripwire, logwatch"
echo " - sysstat, iptables, snort"
echo ""
echo "[🧠] All tools are now available in your Termux environment."
INNER

chmod +x "$SOURCE_DIR/SecureIT-Arsenal.sh"

echo "[✅] EchoNull Arsenal deployed successfully."
echo "[🚀] Launch with: bash \$SOURCE_DIR/SecureIT-Arsenal.sh"
