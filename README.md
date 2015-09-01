# Atom aliasCommand

A 'lil utility to register existing commands with new names.
Useful if you're conditioned to look for a different name, like `Package Control: Install`.

## Getting Started

```sh
> npm install -g atom-alias-command
```

From you init.coffee (You can open this via `Application: Open Your Init Script`):
```coffee
aliasCommand = require 'atom-alias-command'

aliasCommand 'tree-view:move',
  orig: 'tree-view:rename'

aliasCommand 'package-control:install',
  orig: 'settings-view:install-packages-and-themes'

# Takes an optional scope for commands that should only
# appear when a particular element has focus
aliasCommand 'grammar-selector:set-syntax',
  orig: 'grammar-selector:show'
  scope: 'atom-editor'
```

## Running Tests
```sh
> apm test
```
