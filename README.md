# rotz-dots
# Dotfiles

This repo uses [rotz] to bootstrap and manage the configuration files
(dotfiles). It works cross-platform on Windows, MacOS, and Linux.

## Expected dependencies

These should be installed first.

- [git] (usually via `brew`)

## Setup

Currently [rotz] requires [git] to be installed as a pre-requisite.

1. Download the [latest
   release](https://github.com/volllly/rotz/releases/latest) for your platform.
   - Homebrew via [volllly/tap](https://github.com/volllly/homebrew-tap): `brew tap volllly/tap` then `brew install rotz`
   - [Windows](https://github.com/volllly/rotz/releases/latest/download/rotz-x86_64-pc-windows-msvc.zip)
2. Run `rotz clone git@github.com:RoMinjun/rotz-dots.git` 

## Usage

To link dotfiles:

```zsh
rotz link
```

To install dependencies:

```zsh
rotz install
```

If you are on Linux you may want to install all of the dependencies. Be
sure to run the link step first.

```
brew bundle --global
```

To update dotfiles:

```zsh
rotz sync
```

## Environment secrets

Place environment secrets into the local user files (`.config/zsh/*.zsh`,
`.config/powershell/profile.d/*.ps1`). These will not live here except to be
documented if needed during shell initialization.

[rotz]: https://volllly.github.io/rotz
[git]: https://git-scm.com
[Homebrew]: https://brew.sh
