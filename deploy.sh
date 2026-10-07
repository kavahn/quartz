#!/bin/sh
# Build from the local content/ symlink and publish public/ to the gh-pages branch.
set -e
cd "$(dirname "$0")"
npx quartz build
cd public
touch .nojekyll
echo kavahn.com > CNAME
rm -rf .git
git init -q -b gh-pages
git add -A
git commit -qm "Deploy $(date '+%Y-%m-%d %H:%M')"
git push -qf https://github.com/kavahn/quartz.git gh-pages
rm -rf .git
echo "Deployed to https://kavahn.com"
