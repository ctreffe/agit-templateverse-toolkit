# Project Context

## Identity

- Repository: AGIT Templateverse Toolkit
- Role: Independent public utility project derived from AGIT Dev Template; not
  a project template
- License: MIT
- Version: 0.1.0
- Templateverse membership: not a member; registered by Governance as a
  derived project
- Development source: AGIT Dev Template
- Historical initialization baseline: Not established
- First harmonization target: Dev Template `7ac6e8f`; not yet applied

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
- TVDR-0033 reclassified the repository from a Templateverse utility member to
  an independent Dev Template-derived project without rewriting its history or
  automatically synchronizing template content.
- Governance IDEA-0001 and IDEA-0003 were transferred into the project-local
  `IDEAS.md`; both remain unapproved candidates.

## Next step

Choose one bounded project objective: assess the existing format-preserving
config patcher candidate, decide the Windows utility direction in IDEA-0003 or
explicitly select the first Dev Template harmonization. None is automatic.
