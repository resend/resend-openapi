# Resend's OpenAPI Spec

This repository contains the [OpenAPI specification](https://www.openapis.org/) for Resend's API.

## Formats

- **YAML** — `resend.yaml` (source of truth)
- **JSON** — `resend.json` (generated)

## Building

To regenerate `resend.json` from `resend.yaml`:

```sh
./build.sh
```

Requires Node.js v16+.