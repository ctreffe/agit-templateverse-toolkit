# Utility Documentation Standards

## Roles and languages

English is authoritative. README.de.md closely translates README.md;
TEMPLATE_README.de.md closely translates TEMPLATE_README.md. Project introductions
describe actual utility purpose/status/use. Adapted guides describe current
skills and workflow rules; maintain reciprocal language and same-language role
links. Keep AI collaboration disclosure linked to COLLABORATION.md near the top
of introductions and truthful project license information at the bottom.
Guides retain attribution and omit inherited badges. Source README updates map
to the guides and never replace project introductions.

## Human-readable helpers

Document each recipe's purpose, inputs, prerequisites, paths, privilege,
persistent effects, expected result, failure modes, verification and removal.
Code comments/help use English and explain non-obvious rationale, constraints
and lifecycle invariants. Prefer clear names and small modules over excessive
comments. Examples must be generic and reproducible, without private host facts.

## Freshness and evidence

Keep affected code, tests, examples, setup/use/reference guidance, both relevant
README pairs, roadmap, context and changelog aligned with actual behavior.
State planned/untested behavior explicitly. A dry run or syntax check does not
prove privileged host behavior. Retain required local link, bilingual and
script/synthetic checks when affected; broad domain validation is reserved for
its applicable stage. Returned feedback changes maintained source deliberately.

## File and privacy boundaries

Unchanged external inputs are distinct from retained transformed materials,
disposable temporary files and final deliverables. Use cataloged provenance
when those roles are introduced; temp is never versioned. Inspect no unapproved
or restricted material. Access, Git versioning, external transfer and publication
are separate; a clean automated scan grants none of them.
