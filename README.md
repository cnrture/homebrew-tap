# cnrture/tap

A [Homebrew](https://brew.sh) tap for my macOS apps and tools.

## How to use

First, add the tap:

```sh
brew tap cnrture/tap
```

Then install any of the casks listed below.

## Available casks

### ClaudeSwitcher

A lightweight menu bar app that lets you manage and switch between multiple Claude accounts with a single click.

```sh
brew install --cask cnrture/tap/claudeswitcher
```

- **Homepage**: https://github.com/cnrture/ClaudeSwitcher
- **Latest release**: https://github.com/cnrture/ClaudeSwitcher/releases/latest
- **Requirements**: macOS 13 (Ventura) or later

## Updating

Homebrew will automatically pick up new versions during `brew update` / `brew upgrade`:

```sh
brew update
brew upgrade --cask claudeswitcher
```

## Uninstalling

To remove a cask (and its associated data via `zap`):

```sh
brew uninstall --cask --zap claudeswitcher
```

## License

The cask definitions in this repository are released under the MIT License. Each listed app carries its own license — see the corresponding project's repository for details.
