# Homebrew Tap

Personal Homebrew formulas by m-gris.

## Installation

```bash
brew tap m-gris/tap
```

## Formulas

### psst

Claude Code burns tokens on verbose bash commands:

```bash
opam exec -- dune build @check
eval $(opam env) && dune test
docker compose -f docker-compose.dev.yml up -d
```

These should be `just check`, `just test`, `just up`.

**Why this matters:**

1. **Token waste** — Long commands eat context that should go to actual work.

2. **Permission fragmentation** — Claude Code's authorization isn't distributive.
   Even if `dune build` and `dune test` are individually authorized,
   `dune build && dune test` requires separate authorization.
   One `just build` = one clean permission, no re-auth on composition.

3. **Reproducibility** — Recipes are checked into the repo. Raw bash isn't.

**psst** hooks into Claude Code, detects repetitive command patterns,
and nudges toward short `just` recipes.

```bash
brew install m-gris/tap/psst

psst init    # Configure Claude Code hooks
psst doctor  # Verify installation
```
