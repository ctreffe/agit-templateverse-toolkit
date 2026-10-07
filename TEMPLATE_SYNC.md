# Selected Template Synchronization

Date: 2026-10-06
Status: completed selected synchronization; independently validated

Source: https://github.com/ctreffe/ai-template-dev
Selected source commit: 6a2cc69831c99dd68d00fba9063bd404ab0b9df7
Previous recorded baseline: Unknown; no historical delta claimed

## Applied selection

Ongoing task, handoff, review, consistency, retrospective, synchronization,
repository-local troubleshooting and optional explicit planning methods.
Pinned skill-validation metadata and wrapper; applicable exact ongoing
documentation spans adapted to project rules.

## Intentional deviations

- Existing project intent, domain safety, decisions, data storage and local work remain authoritative.
- The maintainer selected current commit skills and bounded normal-push authority
  during correction on 2026-10-07; see [PDR-0001](decisions/PDR-0001-bounded-commit-and-push-authority.md). Other protected actions
  remain separately controlled.
- Creation and completed initialization are not rerun or restored as ongoing work.
- Existing README introductions are retained; separate bilingual guides were selected and adapted.
- Versions, source roadmap/context/backlog and source task history are not copied.
- Troubleshooting incidents are never transferred; existing local records remain local.
- Older project prompts and safety contracts remain; current methods are in the skills.
- Documentation catalogs and visual milestone gates retain their project-specific authority.

This is a selected content synchronization, not a claim that every source file
was copied. The previous historical full baseline remains recorded in
[PROJECT_CONTEXT.md](PROJECT_CONTEXT.md). Future passes compare this selected
commit for these methods and the historical baseline for excluded scope.

## Source difference classification

| Source path | Classification | Reason |
| --- | --- | --- |
| `.gitignore` | adapted | Selected ongoing contract; preserve project adaptations |
| `AGENTS.md` | adapted | Selected ongoing contract; preserve project adaptations |
| `CHANGELOG.md` | not applicable to selected scope | Retain project-owned state, authority, initialization or domain adaptation |
| `COLLABORATION.md` | adapted | Selected ongoing contract; preserve project adaptations |
| `DOCUMENTATION.md` | not applicable to selected scope | Retain project-owned state, authority, initialization or domain adaptation |
| `IDEAS.md` | not applicable to selected scope | Retain project-owned state, authority, initialization or domain adaptation |
| `LICENSE` | not applicable to selected scope | Retain project-owned state, authority, initialization or domain adaptation |
| `PHILOSOPHY.md` | not applicable to selected scope | Retain project-owned state, authority, initialization or domain adaptation |
| `PROJECT_CONTEXT.md` | not applicable to selected scope | Retain project-owned state, authority, initialization or domain adaptation |
| `PROJECT_SETUP.md` | not applicable to selected scope | Retain project-owned state, authority, initialization or domain adaptation |
| `README.de.md` | adapted | Source README mapped to separately selected project guide |
| `README.md` | adapted | Source README mapped to separately selected project guide |
| `REPOSITORY.md` | not applicable to selected scope | Retain project-owned state, authority, initialization or domain adaptation |
| `requirements-tools.txt` | applicable unchanged | Selected ongoing contract; preserve project adaptations |
| `RETROSPECTIVE_PATHS.example.md` | not applicable to selected scope | Retain project-owned state, authority, initialization or domain adaptation |
| `SYNCHRONIZED_STORAGE.md` | not applicable to selected scope | Retain project-owned state, authority, initialization or domain adaptation |
| `TASK_HANDOFF.md` | not applicable to selected scope | Retain project-owned state, authority, initialization or domain adaptation |
| `TROUBLESHOOTING.md` | adapted empty project-local record | Selected ongoing contract; preserve project adaptations |
| `TROUBLESHOOTING_DETAILS.md` | not applicable | Project-local experience; no incident transfer |
| `VALIDATION.md` | adapted | Retain existing managed-interpreter and pinned PyYAML note; no installation authority |
| `VERSION` | not applicable to selected scope | Retain project-owned state, authority, initialization or domain adaptation |
| `scripts/Test-CodexSkill.ps1` | adapted | Explicit UTF-8 for Windows Unicode skills; no install |
| `.agents/skills/check-consistency/SKILL.md` | applicable unchanged | Selected ongoing contract; preserve project adaptations |
| `.agents/skills/commit-changes/SKILL.md` | applicable unchanged | Maintainer-selected current ordinary commit and bounded normal-push workflow |
| `.agents/skills/commit-milestone/SKILL.md` | applicable unchanged | Maintainer-selected current milestone commit and bounded normal-push workflow |
| `.agents/skills/create-local-project/SKILL.md` | not applicable to selected scope | Retain project-owned state, authority, initialization or domain adaptation |
| `.agents/skills/grill-me/LICENSE` | applicable unchanged | Selected ongoing contract; preserve project adaptations |
| `.agents/skills/grill-me/SKILL.md` | adapted | Explicit-only policy retained; installed validator compatibility documented |
| `.agents/skills/grill-me/UPSTREAM.md` | adapted | Explicit-only policy retained; installed validator compatibility documented |
| `.agents/skills/grilling/LICENSE` | applicable unchanged | Selected ongoing contract; preserve project adaptations |
| `.agents/skills/grilling/SKILL.md` | applicable unchanged | Selected ongoing contract; preserve project adaptations |
| `.agents/skills/grilling/UPSTREAM.md` | applicable unchanged | Selected ongoing contract; preserve project adaptations |
| `.agents/skills/handoff-task/SKILL.md` | applicable unchanged | Selected ongoing contract; preserve project adaptations |
| `.agents/skills/perform-retrospective/SKILL.md` | applicable unchanged | Selected ongoing contract; preserve project adaptations |
| `.agents/skills/record-decision/SKILL.md` | applicable unchanged | Selected ongoing contract; preserve project adaptations |
| `.agents/skills/reuse-fixes/SKILL.md` | applicable unchanged | Selected ongoing contract; preserve project adaptations |
| `.agents/skills/review-project/SKILL.md` | applicable unchanged | Selected ongoing contract; preserve project adaptations |
| `.agents/skills/start-project/SKILL.md` | not applicable to selected scope | Retain project-owned state, authority, initialization or domain adaptation |
| `.agents/skills/start-task/SKILL.md` | applicable unchanged | Selected ongoing contract; preserve project adaptations |
| `.agents/skills/sync-template/SKILL.md` | applicable unchanged | Selected ongoing contract; preserve project adaptations |
| `.agents/skills/sync-template/agents/openai.yaml` | applicable unchanged | Selected ongoing contract; preserve project adaptations |
| `.agents/skills/start-project/agents/openai.yaml` | not applicable to selected scope | Retain project-owned state, authority, initialization or domain adaptation |
| `.agents/skills/review-project/agents/openai.yaml` | applicable unchanged | Selected ongoing contract; preserve project adaptations |
| `.agents/skills/perform-retrospective/agents/openai.yaml` | applicable unchanged | Selected ongoing contract; preserve project adaptations |
| `.agents/skills/grilling/agents/openai.yaml` | applicable unchanged | Selected ongoing contract; preserve project adaptations |
| `.agents/skills/grill-me/agents/openai.yaml` | applicable unchanged | Selected ongoing contract; preserve project adaptations |
| `.agents/skills/create-local-project/agents/openai.yaml` | not applicable to selected scope | Retain project-owned state, authority, initialization or domain adaptation |
| `.agents/skills/commit-milestone/agents/openai.yaml` | applicable unchanged | Selected explicit milestone workflow metadata |
| `.agents/skills/check-consistency/agents/openai.yaml` | applicable unchanged | Selected ongoing contract; preserve project adaptations |

## Verification obtained on 2026-10-07

- 10 changed skills passed this project's Test-CodexSkill.ps1 wrapper
  using the exact existing Governance-managed interpreter and PyYAML 6.0.3.
- Guide language structures, retained skill inventories, reciprocal navigation
  and local targets reviewed; project introduction content retained.
- Focused source/meaning review and required diff checks passed; previous Git
  HEAD, branch and empty index preserved.
- Wrapper uses explicit UTF-8 for Unicode skill input on Windows. Newly
  imported planning skills retain explicit-only policy and document the
  installed validator's frontmatter compatibility adaptation in UPSTREAM.md.
- No new environment or package installed; no project code, data, external
  storage, template source repository or protected Git action changed.
- Domain render, workbook pipeline, boot, hardware and host-changing tests
  were not run for these workflow and documentation changes.

## Selected-sync correction: 2026-10-07

The original pass excluded commit-and-push authority. The maintainer now selected
both current commit skills and this bounded rule. The source commit remains the
same; uncommitted source-template changes are outside the correction.

Impact: adopt the two skills and milestone metadata; adapt active local authority
contracts and both workflow guides; record a local PDR and update project context,
changelog and this task checkpoint. Retained validation notes and documentation
skill adaptations are reclassified, not overwritten. Historical decisions,
project README content, code, inputs, outputs, licenses and versions are preserved.
Other derived projects and source templates receive no authority from this record.

Correction verification is recorded separately from the original-pass evidence
above.

### Correction verification

- Both adopted commit skills passed this project's `scripts/Test-CodexSkill.ps1`
  with the existing exact managed interpreter and pinned PyYAML 6.0.3. No
  environment or dependency was installed.
- All 22 files classified as applicable unchanged now match the selected
  committed source after newline normalization. Existing validation notes and
  the retained documentation skill adaptations remain unchanged.
- Reviewed the active local rule diffs and English/German policy meaning.
  Both guide structures and their 12 retained skill entries align;
  72 local links and Markdown anchors in changed documents passed,
  including 54 guide links.
- The locally required `git diff --check` passed.
- Project README content, version, license and existing validation notes match
  the prior committed state. Earlier handoff content is preserved verbatim.
  Only the documented correction files changed; HEAD and main branch are
  unchanged, and staging is empty at final inspection.
- No staging, commit, push, pull, branch, remote, source-template or external
  storage operation was performed. Later versioning requires live state and
  separate repository-specific authorization.
- Broad milestone gates, rendering and visual QA, private workbook pipelines,
  physical USB/boot/deployment tests and host-changing helpers are deferred or
  not applicable to this workflow correction. No changed engineering behavior
  or publication readiness is claimed. No required correction work remains.

