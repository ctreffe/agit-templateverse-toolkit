# Project Context

## Selected template synchronization: 2026-10-06

- Verified local source commit: `6a2cc69831c99dd68d00fba9063bd404ab0b9df7`.
- Separate bilingual guide adoption: [DDR-0001](decisions/DDR-0001-project-introductions-and-template-guides.md).
- Selected ongoing methods and intentional deviations: [TEMPLATE_SYNC.md](TEMPLATE_SYNC.md).
- Previous full/historical source baselines remain unchanged; this selection
  does not claim whole-template adoption or repeat initialization.

## Current source-template reference

- Source for selected synchronization: [AI Dev Template](https://github.com/ctreffe/ai-template-dev).
- Portable identity and former-name mapping: [TEMPLATE_SOURCE.md](TEMPLATE_SOURCE.md).
- Local clone resolution: ignored RETROSPECTIVE_PATHS.local.md, based on
  [RETROSPECTIVE_PATHS.example.md](RETROSPECTIVE_PATHS.example.md).
- Renaming preserves recorded versions, commit baselines and project adaptations;
  it is not a template update or a newly completed harmonization.

## Identity

- Repository: AGIT Templateverse Toolkit
- Role: Independent public utility project derived from AI Dev Template; not
  a project template
- License: MIT
- Version: 0.1.0
- Templateverse membership: not a member; registered by Governance as a
  derived project
- Development source: AI Dev Template
- Historical initialization baseline: Not established
- Earlier proposed first harmonization target: Dev Template `7ac6e8f`; never recorded as applied.
- First selected ongoing-method adoption: source commit recorded above; historical initialization remains unknown.

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
select further Dev Template content beyond the ongoing methods recorded above. None is automatic.

## Commit workflow authority

[PDR-0001](decisions/PDR-0001-bounded-commit-and-push-authority.md) adopts the selected source commit skills and bounded normal
push after explicit commit authorization. Other protected actions and project
access, publication and domain rules retain separate authority. See
[TEMPLATE_SYNC.md](TEMPLATE_SYNC.md) for the correction scope and evidence.

## Detailed source workflow synchronization: 2026-10-07

Current selected workflow baseline: AI Dev Template 1.6.0,
`d782a842cc5733d34c60a6bce39ddca5a65a9b64`. See [TEMPLATE_SYNC.md](TEMPLATE_SYNC.md) for the complete
skill/support and operating-contract selection, intentional domain adaptations
and independent evidence. Historical initialization/full-domain baselines remain
provenance; this selection updates ongoing methods without a project release.
Existing domain, portable-file and publication follow-up remains applicable.

## Selected milestone-tag workflow update: 2026-10-07

[PDR-0002](decisions/PDR-0002-milestone-version-tag-bundle.md) adopts the commit-milestone tag bundle from
`ai-template-dev` at `fa63ed044c980c5d4972978cd869612a7cdf459b`. Explicit milestone commit
authority includes the matching annotated project-version tag and exact branch/
tag pushes unless excluded; ordinary commits retain their narrower bundle.
The earlier full workflow baseline, project versions, domain acceptance and
historical evidence remain unchanged. See [TEMPLATE_SYNC.md](TEMPLATE_SYNC.md).
