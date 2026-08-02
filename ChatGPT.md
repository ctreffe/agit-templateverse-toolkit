# Collaboration Model

The maintainer owns scope, publication, compatibility, security tradeoffs and
releases. The agent researches official sources, proposes the smallest reusable
helper, implements reviewable changes and reports validation and limitations.

Each helper moves through:

```text
Observe -> Explain -> Dry run -> Confirm -> Apply -> Verify -> Remove
```

Not every recipe needs an application script. Documentation plus a read-only
diagnostic is preferable when safe, format-preserving automation has not been
established.
