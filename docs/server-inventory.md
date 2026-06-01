# Server Inventory

Snapshot date: 2026-05-30

Host: `snowserver`

## Docker Containers

| Container | Image | Purpose | Status at Snapshot |
| --- | --- | --- | --- |
| `jellyfin` | `jellyfin/jellyfin:latest` | Media server | healthy |
| `kavita` | `jvmilazz0/kavita:latest` | Books and library server | healthy |
| `immich_server` | `ghcr.io/immich-app/immich-server:v2` | Photo management app | healthy |
| `immich_postgres` | `ghcr.io/immich-app/postgres:14-vectorchord0.4.3-pgvectors0.2.0` | Immich database | healthy |
| `immich_redis` | `valkey/valkey:9` | Immich cache/queue | healthy |
| `immich_machine_learning` | `ghcr.io/immich-app/immich-machine-learning:v2` | Immich ML features | healthy |
| `grafana` | `grafana/grafana-oss:latest` | Metrics dashboard | running |
| `prometheus` | `prom/prometheus:latest` | Metrics collection and storage | running |
| `node-exporter` | `prom/node-exporter:latest` | Host metrics exporter | running |
| `ollama` | `ollama/ollama` | Local model serving | running |

## Native Services

| Service | Purpose |
| --- | --- |
| `caddy.service` | Reverse proxy and automatic HTTPS |
| `docker.service` | Container runtime |
| `containerd.service` | Container runtime backend |
| `smbd.service` | Samba file sharing |
| `nmbd.service` | Samba NetBIOS/name service |
| `tailscaled.service` | Tailscale mesh VPN |
| `ssh.service` | SSH access |
| `qbittorrent.service` | qBittorrent-nox download service |
| `tradeflow-backend.service` | Custom Node.js backend |
| `wiki-innsmouth.service` | Custom Python wiki application |
| `nvidia-persistenced.service` | NVIDIA GPU persistence support |
| `unattended-upgrades.service` | Automated security updates |

## Public Routes

| Domain | Backend |
| --- | --- |
| `stream.innsmoutharchives.com` | Jellyfin on `127.0.0.1:8096` |
| `innsmoutharchives.com` | Redirect to Jellyfin |
| `photos.innsmoutharchives.com` | Immich on `127.0.0.1:2283` |
| `metrics.innsmoutharchives.com` | Grafana on `127.0.0.1:3000` |
| `books.innsmoutharchives.com` | Kavita on `127.0.0.1:5000` |
| `wiki.innsmoutharchives.com` | Python wiki on `127.0.0.1:8765` |
| `tradeflowapp.net` | Static TradeFlow landing page |
| `app.tradeflowapp.net` | Static frontend plus API proxy to Node backend |
| `dash.tradeflowapp.net` | Static dashboard plus API proxy to Node backend |
| `assets.innsmoutharchives.com` | Static asset hosting |

## Storage Snapshot

| Mount | Size | Used | Available | Notes |
| --- | ---: | ---: | ---: | --- |
| `/` | 492G | 105G | 366G | OS and app data |
| `/mnt/jellyfin/media` | 915G | 820G | 50G | Primary media drive |
| `/mnt/jellyfin/media/expansion` | 1.3T | minimal | 1.2T | Expansion media volume |

