# My AI Dev Env for VS Code Dev Containers

This repository stores my personal configuration files (dotfiles) for various AI-assisted development tools. It is specifically designed to be used with **VS Code Dev Containers** to quickly set up a consistent and customized development environment.

The configuration is tailored for working primarily in **Traditional Chinese (zh-Hant)**.

## Configured Tools

This setup includes configurations for the following tools:

*   **Aider**: An AI pair programmer in your terminal.
    *   `~/.aider.conf.yml`: Custom settings including `github-dark` theme, `vim` keybindings, and Chinese language for chat and commits.
*   **aicommit2**: A tool to automatically generate Git commit messages.
    *   `~/aicommit2/config.ini`: Sets the locale to `zh-Hant` and disables unused API providers to prevent accidental data transmission.
*   **Claude**: Custom instructions for Anthropic's Claude models.
    *   `~/.claude/CLAUDE.md`: A system prompt that instructs Claude to act as an expert code analyst and respond in Traditional Chinese.
*   **Gemini**: Custom instructions for Google's Gemini models.
    *   `~/.gemini/GEMINI.md`: A system prompt that instructs Gemini to act as an expert code analyst and respond in Traditional Chinese.

## Usage with VS Code & Dev Containers

These configurations are designed to be automatically installed into your VS Code environment (including Dev Containers) using the **Dotfiles** feature. You can read more about it in the [official VS Code documentation](https://code.visualstudio.com/docs/devcontainers/containers#_personalizing-with-dotfile-repositories).

To set it up, add the following configuration to your VS Code `settings.json` file:

```json
{
  "dotfiles.repository": "<your-github-id>/<this-repo-name>",
  "dotfiles.targetPath": "~/dotfiles",
  "dotfiles.installCommand": "install.sh"
}
```

This will clone the repository into `~/dotfiles` and run the `install.sh` script to create the necessary symbolic links.

## Customization

The key personalizations in this configuration are:

*   **Language**: All tools are configured to interact and generate content in Traditional Chinese (`zh-Hant`).
*   **Editor**: Aider is set up to use `vim` keybindings for a modal editing experience.
*   **Theme**: The `github-dark` theme is used for code syntax highlighting in Aider.
