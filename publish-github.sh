#!/bin/bash
# WebIntell Company v2 — GitHub Publisher
# Run this from your terminal (NOT inside the container)
#
# Prerequisites:
#   brew install gh        # GitHub CLI
#   gh auth login          # Authenticate
#
# Usage:
#   cd /path/to/webintell-company-v2
#   bash publish-github.sh
#
# OR — one-liner after unzipping:
#   unzip webintell-company-v2.zip && cd webintell-company-v2 && bash publish-github.sh

set -e

REPO="webintell-company-v2"
DESC="WebIntell Paperclip company package — Decision Reliability Infrastructure™. 14 AI agents, correct org chart with reportsTo hierarchy, SOUL.md + HEARTBEAT.md + TOOLS.md per agent. Import-ready for Paperclip AI."

echo "🏗️  WebIntell Company v2 — GitHub Publisher"
echo ""

# Verify gh is installed and authenticated
if ! command -v gh &>/dev/null; then
  echo "❌  GitHub CLI not found. Install: brew install gh"
  exit 1
fi
if ! gh auth status &>/dev/null; then
  echo "❌  Not authenticated. Run: gh auth login"
  exit 1
fi

GH_USER=$(gh api user --jq .login)
echo "👤  Publishing as: $GH_USER"
echo "📦  Repo: $GH_USER/$REPO"
echo ""

# Create the GitHub repo and push in one command
gh repo create "$REPO" \
  --description "$DESC" \
  --public \
  --source=. \
  --remote=origin \
  --push

echo ""
echo "✅  Repo live: https://github.com/$GH_USER/$REPO"
echo ""

# Add topics for Paperclip discoverability
gh repo edit "$REPO" \
  --add-topic paperclip \
  --add-topic paperclip-ai \
  --add-topic ai-agents \
  --add-topic multi-agent \
  --add-topic competitive-intelligence \
  --add-topic decision-intelligence \
  --add-topic agentcompanies \
  --add-topic openclaw 2>/dev/null && echo "🏷️  Topics added" || true

echo ""
echo "═══════════════════════════════════════════"
echo "   Repo:    https://github.com/$GH_USER/$REPO"
echo "   Import:  npx paperclipai company import --from ."
echo "   Dry run: npx paperclipai company import --from . --dry-run"
echo "═══════════════════════════════════════════"
