# MCP Assistant

[![macOS](https://img.shields.io/badge/macOS-11.0%2B-blue)](https://www.apple.com/macos) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) A simple macOS menu bar application for managing Meta-Cognitive Prompting (MCP) servers/tools for Claude.

*Screenshot placeholder: Add an image or GIF of your app's menu bar interface.*

## 🤔 Why MCP Assistant?

Interacting with AI models like Claude using Meta-Cognitive Prompting often involves defining multiple specialized servers or tools. While powerful, activating too many MCP servers simultaneously can sometimes overwhelm the model, leading to degraded performance or confusion.

MCP Assistant provides a convenient way to quickly enable or disable specific MCP servers directly from your macOS menu bar, allowing you to tailor Claude's available tools to your current task without complex configuration changes.

## ✨ Features

* **Menu Bar Access:** Lives discreetly in your macOS menu bar for quick access.
* **Server Toggling:** Easily enable or disable registered MCP servers with a single click.
* **Clear Status:** Quickly see which MCP servers are currently active for Claude.
* **Lightweight:** Designed to be simple and resource-efficient.

##  M️ Installation

**Option 1: Download Release (Recommended)**

1.  Go to the [Releases page](link/to/your/releases/page) .
2.  Download the latest `.dmg` or `.zip` file.
3.  If it's a `.dmg`, open it and drag `MCP Assistant.app` to your `/Applications` folder.
4.  If it's a `.zip`, unzip it and move `MCP Assistant.app` to your `/Applications` folder.
5.  Launch MCP Assistant from your Applications folder. You may need to grant permissions on the first launch depending on macOS security settings.

**Option 2: Build from Source**

1.  Clone the repository:
    ```bash
    git clone [your-repo-link]
    cd mcp-assistant
    ```
2.  Open the project in Xcode. 3.  Build the application (Product > Build).
4.  Find the built `MCP Assistant.app` in the Products directory and move it to your `/Applications` folder.

## 🚀 Usage

1.  Launch MCP Assistant. Its icon will appear in your macOS menu bar.
2.  Click the menu bar icon. A dropdown list will show the detected/configured MCP servers.
3.  Each server will have an indicator (e.g., a checkmark, toggle switch) showing if it's currently enabled or disabled.
4.  Click on a server name or its toggle to switch its state (enable/disable it).
5.  The changes take effect immediately for subsequent interactions with Claude (assuming Claude reads the configuration MCP Assistant modifies).

## ⚙️ Configuration

MCP Assistant currently detects servers based on [explain mechanism - e.g., a specific configuration file (`~/.mcp_servers.json`), environment variables, or a hardcoded list?].

* **[Explain how users add/remove/edit servers if applicable]**
* **[Mention any required setup steps]**

*Example using a config file:*
The app looks for a JSON file at `~/.config/mcp_assistant/servers.json`. The format should be:
```json
[
  { "name": "My First Server", "id": "server_one", "enabled": true },
  { "name": "Another Tool", "id": "tool_two", "enabled": false }
]
