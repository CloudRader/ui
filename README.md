# CloudRader UI

<div align="center">
  <img src="docs/assets/logo.png" alt="CloudRader Logo" width="100" />
  <p><strong>The official documentation and landing page for the CloudRader ecosystem.</strong></p>
</div>

---

This repository contains the source code for [cloudrader.com](https://cloudrader.com). It is built using **Zensical**, a modern static site generator focused on simplicity and performance.

## 🚀 Local Development

We use [uv](https://github.com/astral-sh/uv) for fast Python package management.

### Prerequisites

1.  **Install `uv`** (if you haven't already):
    ```bash
    curl -LsSf https://astral-sh.uv/install.sh | sh
    ```

### Running the Site

1.  **Clone the repository**:
    ```bash
    git clone https://github.com/CloudRader/ui.git
    cd ui
    ```

2.  **Install dependencies and start the server**:
    ```bash
    uv run zensical serve
    ```
    The site will be available at `http://localhost:8000`.

## 🛠️ Project Structure

*   `docs/`: Contains the Markdown source files for the website.
*   `docs/assets/`: Images, logos, and custom CSS.
*   `zensical.toml`: Configuration for the Zensical site generator.

## 🌈 Contributing

We welcome contributions! Please feel free to open issues or submit pull requests to improve our documentation and landing page.

---
[Explore CloudRader](https://cloudrader.com)
