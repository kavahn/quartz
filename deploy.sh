#!/bin/sh
# Build from the local content/ symlink and publish public/ to the site branch,
# which Cloudflare Pages serves as-is (no build command).
set -e
cd "$(dirname "$0")"
# Real path so git dates come from the school-notes repo, not this one
npx quartz build -d "$(cd content && pwd -P)"
cd public
rm -rf .git
git init -q -b site
git add -A
git commit -qm "Deploy $(date '+%Y-%m-%d %H:%M')"
git push -qf https://github.com/kavahn/quartz.git site
rm -rf .git
echo "Pushed. Cloudflare will publish https://kavahn.com in a minute."
