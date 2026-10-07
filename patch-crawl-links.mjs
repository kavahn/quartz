// Quartz v5 publishes Obsidian folder notes (`ENSC 151/ENSC 151.md`) as
// `ensc-151/index`, but crawl-links' "shortest" resolution only matches the
// last path segment, so `[[ENSC 151]]` never finds it and 404s.
// This lets a bare link also match `<name>/index`. Runs on postinstall.
// ponytail: remove once crawl-links handles folder notes upstream.
import fs from "node:fs"

const file = "node_modules/@quartz-community/crawl-links/dist/index.js"
const from = "return targetCanonical === fileName;"
const to =
  'return targetCanonical === fileName || (fileName === "index" && parts.at(-2) === targetCanonical);'

const src = fs.readFileSync(file, "utf8")
if (src.includes(to)) process.exit(0)
if (!src.includes(from)) {
  console.warn(`patch-crawl-links: pattern not found in ${file}, folder-note links may 404`)
  process.exit(0)
}
fs.writeFileSync(file, src.replace(from, to))
console.log("patch-crawl-links: folder-note links patched")
