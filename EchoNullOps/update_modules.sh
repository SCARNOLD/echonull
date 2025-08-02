#!/data/data/com.termux/files/usr/bin/bash
echo "[📡] Checking for EchoNull updates..."
git pull origin main || echo "[❌] Update failed."
