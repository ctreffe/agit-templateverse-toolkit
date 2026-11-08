# Utility Repository Standards

## Authority and task entry

AGENTS.md is the resident contract and COLLABORATION.md defines current methods.
Use start-task and a compact TASK_HANDOFF.md for bounded continuation. Preserve
Git selections and unrelated work. Source-template adoption is deliberate;
TEMPLATE_SYNC.md records the exact source and adaptations.

## Temporary Worktree Exception

Ordinary disposable/never-versioned temp rules exclude Git worktrees.
Their container stays ignored by the parent checkout; source versioning inside
follows normal repository authority. Do not clean them as scratch or promote
them to materials/. Follow [Project Anchor and Temporary Worktrees](COLLABORATION.md#project-anchor-and-temporary-worktrees)
for placement, access, preflight, recovery and separately authorized removal.

## Document and subproject folders

Keep generic recipes, helper source, examples, scripts and tests in their
established paths. These preferences do not introduce a package hierarchy,
environment or catalogs without a selected concrete need. Host state and
private device bindings remain excluded from versioned public content.

Within each applicable role and access root, prefer shallow folders named for
the document, subject or subproject. Keep companion formats together, for
example output/handbook/handbook.pdf and output/handbook/handbook.docx.
A single deliverable may live directly in output/. Add subfolders only for
meaningful source roles, access boundaries, workflow, volume or tool requirements.
Work-item and catalog IDs remain metadata, not mandatory directory names.
Use descriptive filenames and language or revision suffixes when needed to
avoid collisions; do not add version-folder chains by default.

Apply this within input/ classifications, materials/ storage states and approved
output locations; never merge access zones or alter original input content.
Keep catalog IDs, provenance and relative references stable. Technical build,
website and dependency trees may need their own structure. Rendering must
preserve companion formats and unrelated files; cleanup needs its own authority.
Existing projects and files are not moved or reorganized automatically.

Keep source, tests, fixtures, packages and build/release trees in their tool-required locations.

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

## Restricted-source metadata workflow

Use explicit `manage-restricted-storage` and [RESTRICTED_STORAGE.md](RESTRICTED_STORAGE.md)
for selected empty-area setup, device connection, approved metadata maintenance
or selected project profile work. Existing access rules, inventories and
provider/recipient choices prevail. Record layout, catalog, configuration and
effective protection separately; failures/stale evidence remain visible.
Metadata never authorizes source discovery, reading, processing or transmission.
No live area, setting, policy, service or test is activated by template adoption.

## Optional AI collaboration branch recommendation

Preserve an established local branch convention. Where none exists, the source
recommends `<type>/ai-dev/<topic>` with a short lowercase kebab-case topic and
an appropriate semantic type, such as feature, fix, docs or chore. Agree local
defaults when needed; this recommendation creates, switches or renames no branch.
Every Git action retains its repository/action-specific control-word authority.
