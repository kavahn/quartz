#!/bin/sh
# Build from the local content/ symlink and publish public/ to the site branch,
# which the Cloudflare Worker deploys as static assets.
set -e
WORKER_NAME=quartz # must match the Worker's name in the Cloudflare dashboard
cd "$(dirname "$0")"
# Real path so git dates come from the school-notes repo, not this one
npx quartz build -d "$(cd content && pwd -P)"
cd public
cat > wrangler.jsonc <<JSON
{
  "name": "$WORKER_NAME",
  "compatibility_date": "2026-10-01",
  "assets": { "directory": ".", "not_found_handling": "404-page" }
}
JSON
printf 'wrangler.jsonc\n.assetsignore\n' > .assetsignore
rm -rf .git
git init -q -b site
git add -A
git commit -qm "Deploy $(date '+%Y-%m-%d %H:%M')"
git push -qf https://github.com/kavahn/quartz.git site
rm -rf .git
echo "Pushed. Cloudflare will publish https://kavahn.com in a minute."
