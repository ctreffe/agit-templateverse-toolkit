# Codex Operating Policy

Codex may maintain public recipes, read-only diagnostics and synthetic tests in
this repository. It must not read credential values, authenticated application
state or unrelated user configuration.

Host changes are never implied by permission to edit this repository. Before a
host-changing command, identify paths, persistent settings, required privileges
and the removal path, then obtain explicit user approval. Prefer official
application configuration surfaces over operating-system interventions.

Read-only Git inspection is allowed. Staging is allowed only for requested work
or an authorized commit. Commits, amendments, tags, pushes, pulls, merges,
rebases, resets, stashes and branch changes require an action-specific
instruction containing `explicit`, `explicitly` or `explizit`.
