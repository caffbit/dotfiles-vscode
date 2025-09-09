#!/bin/bash
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"

ln -sf "$PWD/.claude" "$HOME"/.claude
ln -sf "$PWD/.gemini" "$HOME"/.gemini
ln -sf "$PWD/.starship.toml" "$XDG_CONFIG_HOME"/.starship.toml

curl -LsSf https://astral.sh/uv/install.sh | sh

npm install -g aicommit2
npm install -g @google/gemini-cli
npm install -g @anthropic-ai/claude-code
