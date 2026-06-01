#!/usr/bin/env bash
set -euo pipefail

echo "== Uptime =="
uptime

echo
echo "== Disk Space =="
df -h / /mnt/jellyfin/media /mnt/jellyfin/media/expansion

echo
echo "== Failed systemd Units =="
systemctl --failed --no-pager

echo
echo "== Key Services =="
systemctl is-active docker containerd caddy smbd nmbd tailscaled ssh qbittorrent tradeflow-backend wiki-innsmouth

echo
echo "== Docker Containers =="
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Image}}"

echo
echo "== HTTP Probes =="
curl -fsS -I http://127.0.0.1:8096 | head -5 || true
curl -fsS -I http://127.0.0.1:5000 | head -5 || true
curl -fsS -I http://127.0.0.1:2283 | head -5 || true

