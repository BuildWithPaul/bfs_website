# bfs_website

Site vitrine de la **Brasserie des Faux Semblables** — Paysan-Brasseur Bio à Saint-Victor-de-Cessieu (38110).

Site statique (HTML/CSS/JS) servi via Nginx dans Docker, derrière Caddy reverse proxy.

## Déploiement

Le site est déployé via le repo [caddy-docker](https://github.com/BuildWithPaul/caddy-docker) qui orchestre tous les services.

### Avec docker-compose (caddy-docker)

Le service `bfs` est défini dans le `docker-compose.yml` de caddy-docker et buildé depuis ce repo.

### Test local

```bash
docker compose up --build
# Disponible sur http://localhost:8080/bfs/
```

### Accès

- URL : `https://paul-sandbox.duckdns.org/bfs/`
- Reverse proxy via Caddy (auto-HTTPS)

## Structure

```
├── index.html      # Page principale
├── img/             # Images
├── Dockerfile       # Nginx + config
├── nginx.conf       # Config Nginx (subpath /bfs/)
└── docker-compose.yml
```