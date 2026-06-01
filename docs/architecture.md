# Architecture Overview

This environment is built around a single Ubuntu server running a mix of Dockerized services and native systemd services.

## Traffic Flow

Public HTTPS traffic terminates at Caddy. Caddy routes domains and subdomains to local services using reverse proxy rules or serves static files directly from `/var/www`.

```text
Internet
  |
  v
Caddy reverse proxy
  |
  +-- Jellyfin
  +-- Immich
  +-- Kavita
  +-- Grafana
  +-- Self-hosted wiki
  +-- TradeFlow frontend/API
```

## Service Model

Docker is used for packaged applications that benefit from isolated runtime environments, including Jellyfin, Immich, Kavita, Grafana, Prometheus, node-exporter, and Ollama.

Systemd is used for host-level services and custom apps that are simpler to operate directly on the server, including Caddy, Samba, qBittorrent-nox, the TradeFlow backend, and the self-hosted wiki.

Custom applications are produced with AI-assisted development, then deployed and operated directly on the server. The demonstrated work is directing AI tooling, validating behavior, deploying services, monitoring them, and troubleshooting them in production-style conditions.

## Monitoring

Prometheus collects system and service metrics. Node-exporter exposes host metrics, and Grafana provides dashboards for visibility into server health.

## Access and Networking

Tailscale provides private remote access without exposing SSH broadly. Caddy handles public web access with automatic TLS certificates. Samba provides local-network file access for media workflows.

## Operational Practices

- Services are checked with `systemctl`, `docker ps`, `journalctl`, and HTTP health probes.
- Reverse proxy changes are validated through Caddy reloads and endpoint checks.
- Docker health state is used to quickly identify degraded containers.
- Media storage is split between a primary media mount and an expansion mount.
