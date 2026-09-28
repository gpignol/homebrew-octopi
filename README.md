# homebrew-octopi

A [Homebrew](https://brew.sh) tap for **[Octopi](https://useoctopi.com)** — a free, local-first
macOS app that turns a plain-English task into a finished spreadsheet.

## Install

```sh
brew install --cask gpignol/octopi/octopi
```

or:

```sh
brew tap gpignol/octopi
brew install --cask octopi
```

Octopi is signed with an Apple Developer ID and notarized, and updates itself in place.

## Updating the cask on each release

After publishing a new version to `gpignol/octopi-releases`, bump `version` + `sha256` in
`Casks/octopi.rb` (the sha256 is the `.dmg`'s, in the release's `.sha256` file), or run
`brew bump-cask-pr` against this tap.
