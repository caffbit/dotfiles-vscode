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
ln -sfv "$SCRIPT_DIR/aicommit2" "$HOME/aicommit2"

echo "✅ (install.sh) 客製化設定完成！