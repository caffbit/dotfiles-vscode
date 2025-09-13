#!/bin/bash
set -e

# --- 基本設定 ---
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
echo "🚀 (install.sh) 開始執行客製化設定..."

# --- 建立設定檔的符號連結 (Symlinks) ---
ln -sfv "$SCRIPT_DIR/.claude" "$HOME/.claude"
ln -sfv "$SCRIPT_DIR/.gemini" "$HOME/.gemini"
ln -sfv "$SCRIPT_DIR/.github" "$HOME/.github"
ln -sfv "$SCRIPT_DIR/.aider.conf.yml" "$HOME/.aider.conf.yml"


# --- 安裝 Python 工具 (uv) ---
if ! command -v uv &> /dev/null; then
    echo "📦 正在安裝 uv..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
else
    echo "👍 uv 已經安裝。"
fi

# --- 安裝 Node.js AI 工具 ---
echo "🤖 正在安裝 Node.js 版本的 AI 工具..."
npm install -g \
    @google/gemini-cli \
    @anthropic-ai/claude-code \
    aicommit2

# --- 安裝 Python AI 工具 ---
echo "🐍 正在安裝 Python 版本的 AI 工具 (aider)..."
if pipx list --json | grep -q '"name": "aider-chat"'; then
    echo "👍 aider-chat 已安裝，正在嘗試升級..."
    pipx upgrade aider-chat
else
    echo "⏳ 正在安裝 aider-chat..."
    pipx install aider-chat
fi

echo "✅ (install.sh) 客製化設定完成！