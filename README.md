# AGIT Templateverse Toolkit

> [!NOTE]
> **AI Collaboration**
>
> This repository is maintained through maintainer-led collaboration with AI
> agents. Recipes and scripts are reviewed as ordinary source code; an agent
> instruction never replaces user consent for a host-level change.
>
> The provider-neutral working agreement is maintained in
> [COLLABORATION.md](COLLABORATION.md).

**[Link zur deutschen README](README.de.md)**

Reusable, privacy-conscious setup recipes and local helper tools for AGIT
Templateverse workflows.

## What this repository provides

- small, versioned recipes for recurring workstation setup problems;
- read-only diagnostics that do not print credentials or configuration
  contents;
- explicit scope, prerequisites, verification and removal instructions; and
- bilingual onboarding for users who do not maintain their own tooling.

This toolkit is not a project template and does not contain private
Templateverse governance. It can be used independently.

## Templateverse membership

This repository is an official public utility member of the AGIT Templateverse.
It is coordinated through a private governance repository named
`agit-templateverse`, but users do not need access to that repository.

The public project templates are:

- [AGIT Project Template](https://github.com/ctreffe/agit-project-template)
- [AGIT Dev Template](https://github.com/ctreffe/agit-dev-template)
- [AGIT Documentation Template](https://github.com/ctreffe/agit-docs-template)

All Templateverse members may link to this toolkit when a concrete public
recipe is relevant; no member must advertise it by default.

## Safety model

Helpers must be transparent and user-started. They default to inspection or a
dry run, identify every persistent change, avoid administrator privileges and
never store API keys, access tokens or personal paths in the repository.
Filesystem permissions, ACLs, operating-system identities and synchronization
configuration are outside the initial scope.

## First recipe: reliable Git authentication from Codex

The first recipe makes Codex-spawned Git commands select an already installed
Git Credential Manager without storing a credential in Codex configuration or
changing the user's global Git configuration:

- [English recipe](recipes/codex/git-credential-manager.md)
- [German recipe](recipes/codex/git-credential-manager.de.md)

Run the read-only diagnostic from PowerShell:

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\scripts\Test-CodexGitCredential.ps1
```

The diagnostic performs no network request and no push.

## Repository status

The first development slice contains documentation and a read-only diagnostic.
Automatic config patching, installers and releases are not yet implemented.

## Continuous Improvement

Reusable improvements are evaluated for safety, portability and maintenance
cost before becoming a recipe. Toolkit releases remain independent from the
project templates and from the private governance repository.

## License

Licensed under the [MIT License](LICENSE).
