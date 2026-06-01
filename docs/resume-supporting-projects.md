# Resume Supporting Projects

This document translates the infrastructure in this repository into resume-ready project language for infrastructure, operations, and small-company technical roles.

## Self-Hosted Infrastructure Portfolio

Built and operate a self-hosted Ubuntu server environment used daily for media, photos, books, monitoring, file sharing, AI model serving, and AI-assisted custom applications.

Key work:

- Configured Caddy as a reverse proxy with automatic HTTPS for multiple public domains and subdomains.
- Deployed and operated Dockerized services including Jellyfin, Immich, Kavita, Grafana, Prometheus, node-exporter, and Ollama.
- Built a monitoring stack with Prometheus and Grafana to track server health and service availability.
- Managed Linux system services with systemd, including Caddy, Samba, qBittorrent-nox, Tailscale, SSH, a custom business platform, and a self-hosted wiki.
- Directed AI-assisted development to produce custom software while owning requirements, architecture decisions, deployment, operations, and troubleshooting.
- Used Tailscale to support private administrative access while keeping internal services bound to localhost where appropriate.
- Maintained Samba shares for local media workflows and Jellyfin library organization.
- Troubleshot outage recovery, Docker daemon failures, invalid configuration files, service health checks, and filesystem/mount validation.

## TradeFlow

Directed AI-assisted development to produce and deploy TradeFlow, a custom business platform for a small home-services company.

Key work:

- Owned requirements, architecture decisions, deployment, and ongoing operations.
- Deployed the backend as a managed systemd service.
- Routed public frontend and API traffic through Caddy.
- Hosted static frontend assets from `/var/www`.
- Connected technical implementation to business operations, reporting, pricing, and process cleanup.

## Resume Bullet Options

- Designed, deployed, and operate a self-hosted Ubuntu infrastructure environment running Dockerized media, photo, book, monitoring, and AI services behind Caddy reverse proxy with automatic HTTPS.
- Built a production-style observability stack using Prometheus, Grafana, and node-exporter to monitor host and service health.
- Administer Linux services with systemd, Docker, SSH, Tailscale, Samba, Caddy, and automated update workflows.
- Directed AI-assisted development to produce custom applications, then deployed and maintained them on self-managed Linux infrastructure.
- Deployed AI-assisted custom applications alongside packaged services on the same server, using Caddy routing and systemd process management.
- Troubleshot real outage conditions including Docker daemon startup failures, service health degradation, filesystem checks, and post-reboot recovery.
