# Owen Wallace - Infrastructure Portfolio

This repository documents a self-hosted Linux infrastructure environment used for media services, personal cloud apps, monitoring, reverse proxy routing, and custom application deployment.

The goal is not to present a toy lab. This is a daily-use server environment with public HTTPS endpoints, Dockerized services, observability, private networking, file sharing, and custom applications running together on infrastructure I administer end to end.

## What This Demonstrates

- Linux server administration on Ubuntu
- Docker-based service deployment and operations
- Reverse proxy routing with Caddy and automatic HTTPS
- Monitoring with Grafana, Prometheus, and node-exporter
- Private access with Tailscale and SSH
- SMB/Samba media shares for local-network access
- Self-hosted services for media, photos, books, and AI model serving
- Custom Node.js and Python services deployed alongside packaged applications
- Practical troubleshooting after outages, config errors, and service failures

## Active Service Stack

| Area | Services |
| --- | --- |
| Reverse proxy | Caddy |
| Media | Jellyfin |
| Books | Kavita |
| Photos | Immich, Postgres, Valkey/Redis, machine learning service |
| Monitoring | Grafana, Prometheus, node-exporter |
| AI infrastructure | Ollama |
| File sharing | Samba |
| Remote access | Tailscale, SSH |
| Custom apps | TradeFlow backend, Python wiki archive |
| Downloads | qBittorrent-nox |

## Repository Contents

- `config/caddy/Caddyfile` - public-facing reverse proxy configuration
- `docs/server-inventory.md` - active containers, services, routes, and ports
- `docs/architecture.md` - high-level explanation of the stack
- `docs/resume-supporting-projects.md` - resume-ready project language and proof points
- `scripts/health-check.sh` - server health check command script
- `resume/` - resume artifacts for applications and portfolio use

## Notes

Sensitive credentials, private keys, tokens, passwords, and application data are intentionally excluded. Public domains, localhost bindings, and service names are included because they help show the operational shape of the environment.

