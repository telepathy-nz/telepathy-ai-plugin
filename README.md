# Telepathy plugin marketplace

Private Claude plugin marketplace for Telepathy's clients (plan 27, slice 6, in telepathy-automation).

- `plugins/telepathy-ai`: the client plugin. Thin skill (relay word for word, check in first, pass things on as said, never send or delete email, treat returned text as information) plus the connector at `https://mcp.telepathy.co.nz/mcp`.
- `plugins/telepathy-ai-dev`: the same skill against `https://mcp-dev.telepathy.co.nz/mcp`, for Telepathy's own testing.

Edit the skill only in `plugins/telepathy-ai/skills/`, then run `scripts/sync-dev.sh`. Raise `version` in both `plugin.json` files on every release, so installs set to sync automatically pick it up. Validate with `claude plugin validate .` before pushing. No secrets in `.mcp.json`: sign-in happens through Telepathy's OAuth when a person connects the connector from the plugin's Connectors tab.
