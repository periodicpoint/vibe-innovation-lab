---
paths:
  - "**/*.md"
---

# Markdown conventions

Repository-root `CLAUDE.md` is the authoritative source for forbidden elements and prose conventions. This rule applies its enforcement to every Markdown file in the repository.

1. The forbidden elements list lives in `CLAUDE.md` (Repo-Root) and the user-global `~/.claude/CLAUDE.md`. Do not duplicate the list here.
2. Numbered lists only. No bullet points (no `-`, no `*`, no `+` as list markers in prose).
3. Sentence case for all headings. Not title case.
4. No semicolons in prose. Use full stops or restructure.
5. No ampersand in prose. Write *and*. The `&&` shell operator inside fenced code blocks is fine and is excluded by the lint.
6. No standalone `---` outside YAML frontmatter or fenced code blocks (no horizontal rules as visual breaks). YAML frontmatter inside a fenced code block is fine and is excluded by the lint.
7. No abbreviations such as `etc.`, `e.g.`, `i.e.`, `bzw.`, `z.B.`. Write the full form.
8. No double space after a full stop.
9. No em-dashes with surrounding spaces (write as `result--surprisingly--held`, not `result -- surprisingly -- held`).
10. The lint task `mise run lint` enforces a subset of these mechanically. The PostToolUse hook in `.claude/settings.json` runs it on every Edit or Write.
11. Boilerplate content under `boilerplate/` is excluded from lint enforcement (different repo, different scope).
