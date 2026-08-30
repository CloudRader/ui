# CloudRader UI

<div align="center">
  <img src="src/assets/logos/logo.png" alt="CloudRader Logo" width="100" />
  <p><strong>The official public landing website for the CloudRader ecosystem.</strong></p>
</div>

---

This repository contains the source code for [cloudrader.com](https://cloudrader.com). It is built as a lightweight, modern multi-page web application served with Nginx.

## 🚀 Local Development

### Prerequisites

- `pnpm`
- `docker` (optional)

### Running the Site

1. **Clone the repository**:
   ```bash
   git clone https://github.com/CloudRader/ui.git
   cd ui
   ```

2. **Install dependencies**:
   ```bash
   pnpm install
   # or
   make install
   ```

3. **Start the local development server**:
   ```bash
   pnpm dev
   # or
   make serve
   ```
   The site will be available at `http://localhost:3000`.

4. **Run with Docker**:
   ```bash
   make docker-build
   make docker-run
   ```

## 🛠️ Project Structure

* `src/`: Static web application source code.
  * `src/index.html`: Main landing page.
  * `src/products/`: Product showcase pages.
  * `src/resources/`: Organization resources and developer links.
  * `src/blog/`: News and blog updates.
  * `src/assets/`: Branding logos and icons.
  * `src/css/`: Stylesheets and design tokens.
  * `src/js/`: Client scripts and theme management.
  * `src/package.json`: Node/pnpm development scripts and dependencies.
* `Dockerfile`: Production Nginx container image.
* `nginx.conf`: Nginx routing configuration.
* `Makefile`: Development and validation tasks.

## 🌈 Contributing

We welcome contributions! Please run `make check` before submitting a pull request to ensure formatting and linting pass.

---
[Explore CloudRader](https://cloudrader.com)
