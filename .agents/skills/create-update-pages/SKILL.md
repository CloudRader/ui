---
name: create-update-pages
description: Create or update CloudRader landing pages. Use this skill when adding, editing, moving, or reorganizing HTML pages under src/, including page content, navigation, links, images, and shared presentation details. Inspect surrounding pages and stylesheet configuration first, preserve the existing CloudRader design language, and do not invent product behavior or assets.
---

# CloudRader Landing Pages

Use this skill for the CloudRader UI repository and its `src/` tree. Keep
changes consistent with the existing public landing site.

## Repository Structure

- `src/index.html`: CloudRader overview and ecosystem landing page.
- `src/products/index.html`: Product cards and product links.
- `src/resources/index.html`: GitHub, contribution, and API resource links.
- `src/blog/index.html`: Blog introduction and planned content.
- `src/assets/logos/logo.png`: Shared logo and branding icon.
- `src/css/styles.css`: Central stylesheet and design tokens.
- `src/js/app.js`: Dark/light mode theme toggle and mobile navigation.

Put shared branding in `src/assets/logos/`. Use descriptive lowercase kebab-case filenames.

## House Style

Match the existing modern, glassmorphic design and dark/light color palette:

- Brand colors:
  - Electric Cyan: `#2AC5F3`
  - Emerald Green: `#10B981`
  - Purple: `#A97BFF`
  - Deep Navy background: `#0B0F19`
- Keep site-wide styling in `src/css/styles.css`.
- Use ASCII for new source text unless the content clearly requires another character set.
- Preserve existing terminology, capitalization, links, and page organization.

## Editing Workflow

1. Read the target page, nearby pages, relevant navigation, and referenced assets.
2. Edit the smallest appropriate set of files and preserve unrelated changes.
3. Check headings, links, image paths, and navigation.
4. Run validation checks before reporting completion.

Use the Makefile for normal workflows:

```bash
make install
make serve
make pre-commit
make check
```

`make check` runs all configured pre-commit hooks.
