# AGENTS.md

## Project Overview

This repository contains the public landing website for the CloudRader ecosystem.
It is a lightweight multi-page web application served with Nginx in Docker and
deployed via GitHub Pages.

Key paths:

- `src/`: Static HTML, CSS, JavaScript, and assets.
  - `src/index.html`: Main landing page.
  - `src/products/index.html`: Ecosystem products overview.
  - `src/resources/index.html`: Organization resources and links.
  - `src/blog/index.html`: Ecosystem announcements and blog.
  - `src/assets/logos/`: Brand logo and icons.
  - `src/css/styles.css`: Central stylesheet and design tokens.
  - `src/js/app.js`: Interactive components and dark/light theme toggle.
  - `src/package.json`: Node/pnpm development scripts and dependencies.
- `Dockerfile`: Production Nginx container image.
- `nginx.conf`: Nginx routing and static file configuration.
- `Makefile`: Local development, preview, Docker, and validation commands.
- `.github/workflows/build.yml`: GitHub Pages deployment workflow.

## Setup

Prerequisites:

- `pnpm` (for local development server).
- `pre-commit` (for Git hook validation).
- `docker` (optional, for containerized preview).

Install dependencies from the repository root:

```bash
make install
# or: pnpm install
```

Install the pre-commit Git hook:

```bash
pre-commit install
```

Do not commit `node_modules`, `.cache`, or OS metadata files.

## Development Workflow

Start the local development server:

```bash
make serve
# or: pnpm dev
```

The default local URL is `http://localhost:3000`.

Build and run with Docker:

```bash
make docker-build
make docker-run
```

Edit pages directly under `src/`. Keep stylesheets organized in `src/css/`
and assets in `src/assets/`.

Use `make help` to list all available Makefile targets.

## Testing and Checks

Before submitting changes, run:

```bash
make check
```

This runs all configured pre-commit hooks, which check trailing whitespace,
final newlines, YAML, TOML, and unusually large added files.

For focused validation, run:

```bash
make pre-commit
```

## Code and Content Conventions

- Match the existing glassmorphic design language, color palette, and component structure.
- Brand colors:
  - Electric Cyan: `#2AC5F3`
  - Emerald Green: `#10B981`
  - Purple: `#A97BFF`
  - Deep Navy background: `#0B0F19`
- Keep site-wide styling in `src/css/styles.css`.
- Use ASCII for new source text unless the content requires another character set.
- Keep navigation and footer links synchronized across all pages in `src/`.

## Build and Deployment

GitHub Actions deploys the `src/` directory directly to GitHub Pages on every
push to `main`. There is no separate pull-request workflow in this repository,
so run `make check` locally before review.

To remove temporary files locally:

```bash
make clean
```

## Security and Repository Hygiene

- Do not commit credentials, tokens, private keys, or production `.env` files.
- Documentation and examples must use placeholders for external-service secrets.
- Keep assets reasonably sized; the large-file pre-commit hook checks newly added files.

## Pull Requests

Keep changes focused, describe affected pages or configuration, and report
the validation performed. At minimum, run `make check` before requesting review.
