# Security Policy

This repository currently contains a documentation-first starter, not application runtime code. Security work therefore focuses on safe starter reuse, secret hygiene, and clear reporting paths.

## Supported Scope

The `main` branch is the supported version until the project publishes tagged releases.

Security reports are appropriate for:

- Accidentally committed secrets or credentials
- Unsafe starter guidance that could cause credential exposure
- Documentation that recommends weak security defaults
- Validation gaps that could hide sensitive files in a cloned project

Reports about a project that merely copied this starter should be filed in that downstream project unless the issue comes from this starter's guidance.

## Reporting A Vulnerability

Use GitHub's private vulnerability reporting or security advisory flow when available for this repository.

If private reporting is not available, open a minimal public issue that says a security contact is needed. Do not include exploit details, secrets, tokens, private URLs, or personal data in a public issue.

## Handling Secrets

Do not commit real secrets to this repository. Use placeholders in examples and store real values in environment variables, secret managers, or deployment platform secrets.

Before publishing changes, run:

```bash
if rg -n --glob '!SECURITY.md' "(token|secret|password|api[_-]?key|credential)\s*[:=]|BEGIN .*PRIVATE KEY" .; then
  echo "Review matches before committing."
else
  echo "No obvious secrets found."
fi
```

Review matches before committing. Some documentation examples may intentionally contain placeholder words such as `secret`; real values must not appear.

## Baseline Security Guidance

The reusable project security baseline lives in `docs/SECURITY.md`.
