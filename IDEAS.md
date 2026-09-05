# AGIT Templateverse Toolkit Idea Backlog

This project-local backlog holds possible Toolkit capabilities that are worth
retaining but are not approved roadmap work. Capturing an idea does not
authorize source access, implementation, host changes, security claims or a
release.

## Status Model

- **Captured** — recorded for later review; no implementation decision exists.
- **Exploring** — alternatives or constraints are being assessed.
- **Promoted** — accepted into the project roadmap or local decision process.
- **Deferred** — retained but intentionally not under active consideration.
- **Rejected** — closed with a short rationale.

## Currently Open Ideas

- `IDEA-0001` — decide whether a current-user Windows configuration assistant
  should become an initial Toolkit capability.
- `IDEA-0003` — define the Toolkit's possible Windows utility milestone,
  supported users and systems, privilege model and first capability.

## Captured Ideas

### IDEA-0001: Current-user Windows configuration assistant

- **Type:** Project feature
- **Status:** Captured
- **Potential destination:** AGIT Templateverse Toolkit
- **Transferred from:** AGIT Templateverse Governance IDEA-0001 on 2026-09-06
  under TVDR-0033
- **Source project:** AGIT Deployment Kit, remote identifier
  `ctreffe/agit-windows-deployment-kit`, expected sibling directory
  `agit-windows-deployment-kit`; latest committed source baseline observed when
  the idea was captured: `5e62f07`
- **Opportunity:** Provide a user-invoked PowerShell assistant that reads and
  configures useful Windows settings for the currently executing user, such as
  File Explorer visibility, the Explorer start location, context menu, taskbar,
  Widgets, application autostart and selected per-user recommendation or
  privacy preferences.
- **Reusable elements:** Assess the current-user registry operations and
  validation patterns in `Explorer.ps1`, `Taskbar.ps1`, `ContextMenu.ps1`,
  `Microsoft.ps1`, `Privacy.ps1`, `Common.ps1` and `Validation.ps1` below the
  source project's
  `deployment/sources/$OEM$/$1/Deployment/Scripts/` tree. `Config.ps1` supplies
  the existing option names and explanations. Select a clean committed source
  revision if the idea is promoted; do not treat uncommitted v1.2.0 physical-
  test corrections as a reusable baseline.
- **Boundaries:** Extract and adapt only current-user behavior. Do not copy the
  deployment account lifecycle, credentials, AutoLogon, answer file, offline
  Windows image handling or machine-wide policy settings. Do not modify the
  Default User profile, other user hives, domain account creation, GPO or Intune
  state; do not run automatically at sign-in; avoid elevation so `HKCU` remains
  the invoking user's profile; detect managed policy where practical instead
  of competing with organizational control.
- **Next decision:** Decide whether this should become an initial Toolkit
  capability after the project has defined the Windows milestone in IDEA-0003.

### IDEA-0003: Windows utility capability set

- **Type:** Project direction
- **Status:** Captured
- **Potential destination:** AGIT Templateverse Toolkit
- **Transferred from:** AGIT Templateverse Governance IDEA-0003 on 2026-09-06
  under TVDR-0033
- **Opportunity:** Decide whether to evolve this project into a coherent
  collection of PowerShell-based Windows helper scripts and instruments for
  recurring workstation, repair and maintenance tasks. Initial capability
  candidates are current-user Windows configuration, safe temporary backup and
  restoration of drive contents during laptop repairs, an optionally adapted
  Secure AI security-audit workflow and independently reusable helpers from
  AGIT Deployment Kit.
- **Reusable elements:** IDEA-0001 supplies the current-user Windows candidate.
  Assess the maintainer's existing repair backup tool only under a separately
  declared source and access scope. Review only selected, authorized Secure AI
  security-audit concepts and committed Deployment Kit helpers when planning a
  relevant capability; do not assume that current implementations, licenses or
  security claims transfer unchanged.
- **Boundaries:** Do not broaden the current public, privacy-conscious utility
  purpose merely because these candidates share a repository. Backup and
  restoration must fail safely, avoid overwrite or destructive defaults,
  verify source and destination integrity and expose recovery limitations.
  Current-user tools must remain separate from machine-wide policy, account and
  deployment behavior. An adapted security audit must not inherit Secure AI
  protection claims without its own threat model, scope and validation. A
  future product rename or separate repository remains a later decision.
- **Next decision:** Define the first Windows-focused milestone, intended users,
  supported Windows versions, privilege model and first architecture-setting
  capability before implementation.

## Deferred and Rejected Ideas

None currently.
