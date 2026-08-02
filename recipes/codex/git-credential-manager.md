# Use Git Credential Manager for Codex-spawned Git commands

## Purpose

Prevent HTTPS pushes from failing because a non-interactive Codex shell cannot
display Git's username prompt. This recipe selects an already installed Git
Credential Manager (GCM) only for processes spawned by Codex.

## Prerequisites

- Windows with Git for Windows and `git-credential-manager.exe` installed;
- an HTTPS Git remote;
- a valid GitHub login already available to GCM or permission to complete its
  normal interactive login; and
- a current Codex version supporting `shell_environment_policy.set`.

## Persistent effect

Add these entries to the existing `[shell_environment_policy.set]` table in
`%USERPROFILE%\.codex\config.toml`:

```toml
GIT_CONFIG_COUNT = "1"
GIT_CONFIG_KEY_0 = "credential.helper"
GIT_CONFIG_VALUE_0 = "manager"
```

If the table does not exist, create it once. Refuse an automatic merge when any
`GIT_CONFIG_*` key already exists; the numbering may belong to another runtime
Git override and requires manual combination.

The values use Git's command-scope environment configuration. They do not write
to `.gitconfig` and do not contain a username, password or token.

## Verification

1. Fully restart Codex so it creates a fresh shell environment snapshot.
2. Run `scripts/Test-CodexGitCredential.ps1` from this repository through Codex.
3. In a non-sensitive repository with an HTTPS remote, run `git push --dry-run`
   only after the normal repository-specific push authorization.

The explicit approval and control-word policy for Git actions remains separate
from credential selection.

## Removal

Remove exactly the three `GIT_CONFIG_*` entries above from the Codex config and
restart Codex. Do not remove other entries from
`[shell_environment_policy.set]`.

## Limitations

- This recipe does not install GCM or authenticate an account.
- SSH remotes use SSH authentication and are outside its scope.
- If GCM must refresh an expired login, its normal user interaction may still
  be required.
- A Codex sandbox or network policy may still require a separate push approval.

## Sources

- [Codex shell environment policy](https://learn.chatgpt.com/docs/config-file/config-advanced#shell-environment-policy)
- [Git runtime configuration environment](https://git-scm.com/docs/git-config.html#ENVIRONMENT)
- [Git Credential Manager](https://github.com/git-ecosystem/git-credential-manager)
