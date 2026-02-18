#!/usr/bin/env bash
set -euo pipefail

printf "\n🚀 Phi/Golden Grid Vercel Deploy Helper\n\n"

if ! command -v npm >/dev/null 2>&1; then
  echo "❌ npm is not installed. Install Node.js first: https://nodejs.org"
  exit 1
fi

if ! command -v vercel >/dev/null 2>&1; then
  echo "➡️  Installing Vercel CLI..."
  npm i -g vercel
fi

if ! command -v git >/dev/null 2>&1; then
  echo "❌ git is not installed. Install git first."
  exit 1
fi

if [ ! -d .git ]; then
  echo "❌ This folder is not a git repo. Open terminal in your project folder and run this script there."
  exit 1
fi

echo "➡️  Logging in to Vercel (browser/email may open)..."
vercel login

echo "➡️  Deploying to production..."
vercel --prod

printf "\n✅ Deploy complete.\n\n"

echo "Next checks:"
echo "1) Open your live URL from the deploy output"
echo "2) In Vercel Dashboard → your project → Usage"
echo "3) Confirm Functions usage stays at 0 for this static app"
