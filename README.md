# Bun Docker Images

Universal multi-architecture Bun Docker images for Pterodactyl.

## Available versions

| Bun | Image tag |
|---|---|
| 1.4.4 | bun_1.4.4 |
| 1.4.3 | bun_1.4.3 |
| 1.4.2 | bun_1.4.2 |
| 1.4.1 | bun_1.4.1 |
| 1.4.0 | bun_1.4.0 |
| Latest stable | bun_latest |

Registry: `ghcr.io/akaanakbaik/image-bun`

Supported architectures: linux/amd64 and linux/arm64.

## Pterodactyl

Working directory: `/home/container`

Container user: UID/GID 1000

Example startup:

`bun run index.ts`

Supports the STARTUP environment variable.

## Included tools

Bun, Bash, Git, curl, Python 3, build-essential, and tini.

## Updating

Versions are fixed to the listed tags.
The bun_latest alias points to Bun 1.4.4 for this release.
New versions require updating the workflow and rebuilding.
