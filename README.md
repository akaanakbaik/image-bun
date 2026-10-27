# Bun Docker Images

Multi-architecture Bun Docker image for Pterodactyl.

## Image

`ghcr.io/akaanakbaik/image-bun:bun_latest`

## Platforms

- linux/amd64
- linux/arm64

## Included tools

Bun, Bash, Git, curl, Python 3, build-essential,
pkg-config, and tini.

## Pterodactyl

Working directory: `/home/container`

Container UID/GID: `1000:1000`

Example startup command:

`bun run index.ts`

Or:

`bun start`

The image supports the STARTUP environment variable.

## Updates

The latest Bun version is resolved during builds.
Existing published images are not automatically updated
until the publishing workflow runs again.
