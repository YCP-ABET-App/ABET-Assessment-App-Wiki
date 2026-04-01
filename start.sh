#!/usr/bin/env bash
# Quick Start Script for ABET Assessment Documentation Website
# This script helps you get started quickly

echo "╔════════════════════════════════════════════════════════════╗"
echo "║  ABET Assessment Application - Documentation Website      ║"
echo "║  Quick Start Setup Script                                 ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}Step 1: Checking Prerequisites${NC}"
echo "================================"

# Check for Node.js
if command -v node &> /dev/null; then
    echo -e "${GREEN}✓${NC} Node.js is installed: $(node --version)"
else
    echo -e "${RED}✗${NC} Node.js is not installed"
    echo "  Install from: https://nodejs.org/"
fi

# Check for npm
if command -v npm &> /dev/null; then
    echo -e "${GREEN}✓${NC} npm is installed: $(npm --version)"
else
    echo -e "${RED}✗${NC} npm is not installed"
fi

echo ""
echo -e "${BLUE}Step 2: Installing Dependencies${NC}"
echo "================================"
npm install
if [ $? -eq 0 ]; then
    echo -e "${GREEN}✓${NC} Dependencies installed successfully"
else
    echo -e "${RED}✗${NC} Failed to install dependencies"
    exit 1
fi

echo ""
echo -e "${BLUE}Step 3: Starting Development Server${NC}"
echo "================================"
echo -e "${YELLOW}ℹ${NC} Starting server at http://localhost:8000"
echo -e "${YELLOW}ℹ${NC} Press Ctrl+C to stop the server"
echo ""

npm start
