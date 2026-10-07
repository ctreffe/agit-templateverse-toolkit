# Utility Repository Standards

## Authority and task entry

AGENTS.md is the resident contract and COLLABORATION.md defines current methods.
Use start-task and a compact TASK_HANDOFF.md for bounded continuation. Preserve
Git selections and unrelated work. Source-template adoption is deliberate;
TEMPLATE_SYNC.md records the exact source and adaptations.

## Maintained layout

Retain existing generic recipes, helper source, examples, scripts and tests in
their established paths. Do not create a package/module hierarchy or environment
merely to resemble the template. Add external-input/material catalogs only when
an approved concrete file needs them. Never version credentials, host state,
private paths, generated diagnostics, caches or temporary files.
SYNCHRONIZED_STORAGE.md describes an optional external-file contract and grants
no provider-setting, access or transfer authority.

## Commit, version and release boundaries

Protected actions require exact repository/action instructions containing
explicit, explicitly or explizit. Inside commit-changes an explicit commit includes
the normal push to the verified existing upstream unless excluded. Inside
commit-milestone explicit milestone commit authority also includes one matching
annotated version tag and its exact upstream push. Commit only excludes tags and
pushes; no push retains a local commit/tag; no tag excludes tag creation/push;
no tag push retains the local tag. No force-push, additional unrelated refs,
tag movement/replacement, release, pull or rebase is included. Stage only a
requested or authorized exact reviewed selection.
See [PDR-0002](decisions/PDR-0002-milestone-version-tag-bundle.md) for the milestone-tag amendment to PDR-0001.
Regular summaries use an exact direct Conventional Commit prefix: feat:, fix:,
docs:, chore:, refactor:, test:, ci: or build:. Use meaningful bodies with real
line breaks, never literal escape text. Milestone commits separately close an
already reviewed state and include its completed version. Versions, tags and
releases follow project-owned decisions, not the source-template version.

## Validation and delivery

Use source or behavioral review for bounded changes, focused evidence for
ordinary commits and comprehensive applicable checks at milestone closure.
Retain this project's required diff, bilingual and applicable synthetic/script
checks. Real host effects require their own maintainer-started validation.
Do not change a host as a testing shortcut. Report completed checks and limits.
A deliverable must exist and include use, effects, failure/verification and
removal guidance sufficient without private chat context.

## Project documentation and decisions

README.md/README.de.md introduce the project; TEMPLATE_README.md and its German
counterpart explain inherited methods. Maintain both language pairs, actual
inventories, role navigation, AI collaboration disclosure and license notices;
guides contain no inherited badges. DOCUMENTATION.md's human-readable guidance
is complementary to the current contract. Record durable choices with the
local decisions/ taxonomy; keep existing accepted records and MIT rights.
