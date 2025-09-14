# My AI Dev Env for VS Code Dev Containers

This repository stores my personal configuration files (dotfiles) for various AI-assisted development tools. It is specifically designed to be used with **VS Code Dev Containers** to quickly set up a consistent and customized development environment.

The configuration is tailored for working primarily in **Traditional Chinese (zh-Hant)**.

## Configured Tools

This setup includes configurations for the following tools:

*   **Aider**: An AI pair programmer in your terminal.
    *   `~/.aider.conf.yml`: Custom settings including `github-dark` theme, `vim` keybindings, and Chinese language for chat and commits.
*   **aicommit2**: A tool to automatically generate Git commit messages.
    *   `~/aicommit2/config.ini`: Sets the locale to `zh-Hant` and is configured to likely use a local model, as cloud-based services are disabled.
*   **Claude**: Custom instructions for Anthropic's Claude models.
    *   `~/.claude/CLAUDE.md`: A system prompt that instructs Claude to act as an expert code analyst and respond in Traditional Chinese.
*   **Gemini**: Custom instructions for Google's Gemini models.
    *   `~/.gemini/GEMINI.md`: A system prompt that instructs Gemini to act as an expert code analyst and respond in Traditional Chinese.

## Usage with VS Code Dev Containers

These configurations are intended to be loaded automatically when you build or open a Dev Container in VS Code.

The `install.sh` script is designed to be run by the Dev Container lifecycle. You can configure this in your `.devcontainer/devcontainer.json` file using the `postCreateCommand` property:

```json
{
  "name": "My Dev Environment",
  "image": "mcr.microsoft.com/devcontainers/base:ubuntu",
  "postCreateCommand": "bash ./.devcontainer/ai-dev-env/install.sh"
}
```

This command executes the script after the container is created, setting up the symbolic links to the configuration files in the container's environment.

## Customization

The key personalizations in this configuration are:

*   **Language**: All tools are configured to interact and generate content in Traditional Chinese (`zh-Hant`).
*   **Editor**: Aider is set up to use `vim` keybindings for a modal editing experience.
*   **Theme**: The `github-dark` theme is used for code syntax highlighting in Aider.
