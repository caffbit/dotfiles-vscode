#!/bin/bash
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"

ln -sf "$PWD/.claude" "$HOME"/.claude
ln -sf "$PWD/.gemini" "$HOME"/.gemini
ln -sf "$PWD/.starship.toml" "$XDG_CONFIG_HOME"/.starship.toml

curl -LsSf https://astral.sh/uv/install.sh | sh
curl -sS https://starship.rs/install.sh | sh

npm install -g aicommit2
npm install -g @google/gemini-cli
npm install -g @anthropic-ai/claude-code

STARSHIP_ZSH_INIT='eval "$(starship init zsh)"'
STARSHIP_BASH_INIT='eval "$(starship init bash)"'

grep -qF -- "$STARSHIP_ZSH_INIT" ~/.zshrc || echo -e "\n$STARSHIP_ZSH_INIT" >> ~/.zshrc
grep -qF -- "$STARSHIP_BASH_INIT" ~/.bashrc || echo -e "\n$STARSHIP_BASH_INIT" >> ~/.bashrc

