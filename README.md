# Homebrew tap for Secretli

The [`secretli`](https://github.com/secretli/cli) command for [Homebrew](https://brew.sh), on macOS and Linux:

```bash
brew install secretli/tap/secretli
```

`brew upgrade` picks up new releases. Shell completion for bash, zsh and fish is installed along with it.

The formula installs the release archives of [secretli/cli](https://github.com/secretli/cli/releases) and checks them against their SHA-256. It is written by that repository's release workflow (`scripts/homebrew-formula.sh` there) whenever a version is released, pre-releases aside, so changes belong in secretli/cli, not here. Renovate keeps only this repository's workflow up to date. Every change here is audited, installed and tested on macOS and Linux.

Secretli itself runs at [secretli.app](https://secretli.app).
