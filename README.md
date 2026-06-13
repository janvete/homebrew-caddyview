# homebrew-tools

Personal Homebrew tap for [`janvete`](https://github.com/janvete) — small
CLI/TUI tools shipped via Homebrew.

```
brew tap janvete/tools
brew install caddyview     # TUI SSH monitor for Caddy server logs
brew install dsmview       # TUI SSH monitor for Synology DSM 7.x
```

Each formula in `Formula/` is regenerated automatically by the release
workflow in its source repository on every `v*` tag push.

## Formulae

| Formula | Source | Description |
| --- | --- | --- |
| [caddyview](Formula/caddyview.rb) | [janvete/caddyview](https://github.com/janvete/caddyview) | TUI SSH monitor for Caddy web server logs |
| [dsmview](Formula/dsmview.rb)     | [janvete/dsmview](https://github.com/janvete/dsmview)     | TUI SSH monitor for Synology DSM 7.x |
