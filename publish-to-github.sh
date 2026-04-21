#!/bin/bash
# WebIntell Company Package — GitHub Publish Script
# Run this locally after downloading webintell-company.zip
#
# Prerequisites:
#   - GitHub CLI installed: brew install gh  (or https://cli.github.com)
#   - Authenticated: gh auth login
#   - Git installed
#
# Usage:
#   chmod +x publish-to-github.sh
#   ./publish-to-github.sh

set -e  # Exit on any error

# ─── CONFIG ───────────────────────────────────────────────────────────────────
REPO_NAME="webintell-company"
REPO_DESCRIPTION="WebIntell Paperclip company package — Decision Reliability Infrastructure™. 14 AI agents, full org chart, heartbeat schedules. Import-ready for Paperclip AI."
REPO_VISIBILITY="public"  # Change to "private" if preferred
# ──────────────────────────────────────────────────────────────────────────────

echo ""
echo "🏗️  WebIntell Company Package — GitHub Publisher"
echo "================================================="
echo ""

# Check prerequisites
echo "📋 Checking prerequisites..."

if ! command -v git &> /dev/null; then
    echo "❌ Git not found. Install: https://git-scm.com"
    exit 1
fi

if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI not found. Install: brew install gh"
    echo "   Then authenticate: gh auth login"
    exit 1
fi

if ! gh auth status &> /dev/null; then
    echo "❌ Not authenticated with GitHub CLI."
    echo "   Run: gh auth login"
    exit 1
fi

echo "✅ All prerequisites met"
echo ""

# Get GitHub username
GH_USER=$(gh api user --jq .login)
echo "👤 Publishing as: $GH_USER"
echo ""

# Initialize git repo
echo "📁 Initializing git repository..."
cd "$(dirname "$0")"  # Navigate to the script's directory (the company package)

git init
git add .
git commit -m "feat: initial WebIntell company package

Complete Paperclip AI company package for webintell.io:
- 14 agents: CEO, CTO, Engineers, PM, Data Analyst, Researcher,
  Sales Rep, CMO, Content Writer, Customer Success, Finance & Ops,
  Legal, PE/Enterprise Sales, Design & Web
- Each agent: AGENTS.md + SOUL.md + HEARTBEAT.md + TOOLS.md
- Company manifest, org chart, and import guide
- Built on Decision Reliability Infrastructure™
- Stage 1: Validation (\$0 → \$500k ARR)

Import: npx paperclipai company import --from ./webintell-company"

echo "✅ Git repository initialized with initial commit"
echo ""

# Create GitHub repo and push
echo "🚀 Creating GitHub repository: $REPO_NAME..."

gh repo create "$REPO_NAME" \
    --description "$REPO_DESCRIPTION" \
    --"$REPO_VISIBILITY" \
    --source=. \
    --remote=origin \
    --push

echo ""
echo "✅ Repository published!"
echo ""
echo "🔗 Repository URL: https://github.com/$GH_USER/$REPO_NAME"
echo ""

# Add topics for discoverability
echo "🏷️  Adding topics for discoverability..."
gh repo edit "$REPO_NAME" \
    --add-topic "paperclip" \
    --add-topic "paperclip-ai" \
    --add-topic "ai-agents" \
    --add-topic "multi-agent" \
    --add-topic "competitive-intelligence" \
    --add-topic "decision-intelligence" \
    --add-topic "company-template" \
    --add-topic "claude" \
    --add-topic "openclaw" \
    2>/dev/null && echo "✅ Topics added" || echo "⚠️  Topics skipped (may need manual addition)"

echo ""
echo "═══════════════════════════════════════════════"
echo "🎉 WebIntell company package is live on GitHub!"
echo ""
echo "   Repo:    https://github.com/$GH_USER/$REPO_NAME"
echo "   Import:  npx paperclipai company import --from ./$REPO_NAME"
echo "   Clone:   git clone https://github.com/$GH_USER/$REPO_NAME"
echo ""
echo "═══════════════════════════════════════════════"
echo ""
echo "Next steps:"
echo "  1. Go to https://github.com/$GH_USER/$REPO_NAME"
echo "  2. Update README.md to replace YOUR_USERNAME with $GH_USER"
echo "  3. Run the import command on your Paperclip instance"
echo "  4. Submit to companies.sh registry (optional):"
echo "     npx companies.sh publish $GH_USER/$REPO_NAME"
echo ""
