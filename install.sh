#!/usr/bin/env bash
set -euo pipefail

# NurseStack Installer
# Installs healthcare-specific Claude Code commands for nurse citizen developers

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
COMMANDS_SOURCE="$SCRIPT_DIR/commands"
TEMPLATE_SOURCE="$SCRIPT_DIR/templates"

# Colours
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo ""
echo -e "${BLUE}🩺 NurseStack Installer${NC}"
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""

# Determine install mode
PROJECT_MODE=false
if [[ "${1:-}" == "--project" ]]; then
    PROJECT_MODE=true
    INSTALL_DIR=".claude/commands"
    echo -e "Mode: ${GREEN}Project install${NC} (commands will be committed to this repo)"
else
    INSTALL_DIR="$HOME/.claude/commands"
    echo -e "Mode: ${GREEN}Global install${NC} (available in all projects)"
fi

# Check prerequisites
echo ""
echo "Checking prerequisites..."

# Check Claude Code
if ! command -v claude &> /dev/null; then
    echo -e "${YELLOW}⚠️  Claude Code not found in PATH.${NC}"
    echo "   Install from: https://docs.anthropic.com/en/docs/claude-code"
    echo "   (NurseStack will still install — you just need Claude Code to use it)"
fi

# Check Claude Code installation
if command -v claude &> /dev/null; then
    echo -e "${GREEN}✅ Claude Code found${NC}"
fi

# Create install directory
mkdir -p "$INSTALL_DIR"
echo ""

# Install commands
INSTALLED=0
SKIPPED=0
for cmd_file in "$COMMANDS_SOURCE"/*.md; do
    filename=$(basename "$cmd_file")
    target="$INSTALL_DIR/$filename"
    
    if [[ -f "$target" ]]; then
        echo -e "${YELLOW}⏭️  $filename already exists — skipping${NC}"
        ((SKIPPED++))
    else
        cp "$cmd_file" "$target"
        cmd_name="${filename%.md}"
        echo -e "${GREEN}✅ /$cmd_name${NC}"
        ((INSTALLED++))
    fi
done

# Offer to install CLAUDE.md template
echo ""
if [[ "$PROJECT_MODE" == true ]]; then
    if [[ ! -f "CLAUDE.md" ]]; then
        read -p "Create CLAUDE.md in this project with NurseStack config? (y/n) " -n 1 -r
        echo ""
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            cp "$TEMPLATE_SOURCE/CLAUDE.md" "CLAUDE.md"
            echo -e "${GREEN}✅ CLAUDE.md created${NC}"
        fi
    else
        echo -e "${YELLOW}ℹ️  CLAUDE.md already exists — check templates/CLAUDE.md for NurseStack config to add${NC}"
    fi
fi

# Summary
echo ""
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${GREEN}🩺 NurseStack installed!${NC}"
echo ""
echo "   Commands installed: $INSTALLED"
if [[ $SKIPPED -gt 0 ]]; then
    echo "   Commands skipped:   $SKIPPED (already existed)"
fi
echo "   Location: $INSTALL_DIR"
echo ""
echo "Available commands in Claude Code:"
echo "   /plan-clinical-review     — NMC-aligned clinical product review"
echo "   /review-clinical-safety   — DCB0129/DCB0160 safety audit"
echo "   /qa-streamlit             — Streamlit + HF Spaces QA"
echo "   /ship-hf                  — Ship to GitHub + Hugging Face"
echo "   /review-fhir              — FHIR IG compliance audit"
echo ""
echo -e "${BLUE}Built by nurses who code. For nurses who care.${NC}"
echo ""
