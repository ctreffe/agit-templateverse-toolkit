# Project Context

## Identity

- Repository: AGIT Templateverse Toolkit
- Role: Public reusable companion tooling; not a project template
- License: MIT
- Version: 0.1.0
- Templateverse membership: official public utility member

## Current objective

Establish the repository baseline and validate the first Codex/Git Credential
Manager recipe without storing credentials or changing global Git settings.

## Current state

- The repository was initialized on GitHub with its description and MIT license.
- The first recipe documents a Codex-only runtime Git configuration.
- A PowerShell diagnostic checks prerequisites and effective state without a
  network request or credential access.
- After a full Codex restart on 2026-08-02, the diagnostic passed all persisted
  config, inherited environment and effective Git-helper checks on the Windows
  reference host.
- An explicitly authorized authenticated `git push --dry-run origin main`
  subsequently completed without a helper override or credential prompt and
  reported the remote as up to date.
- No automatic config patcher, installer or release is implemented.

## Next step

Decide whether a format-preserving config patcher is justified and define its
conflict, dry-run, verification and removal contract before implementation.
