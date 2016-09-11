# Atom aliasCommand

A 'lil utility to register existing commands with new names.
Useful if you're conditioned to look for a different name, like `Package Control: Install`.

## Getting Started

```sh
> apm install alias-command
```

From you init.coffee (You can open this via `Application: Open Your Init Script`):
```coffee
aliasCommand = atom.packages.getLoadedPackage('alias-command').requireMainModule()

aliasCommand 'tree-view:move',
  orig: 'tree-view:rename'

aliasCommand 'package-control:install',
  orig: 'settings-view:install-packages-and-themes'

# Takes an optional scope for commands that should only
# appear when a particular element has focus
aliasCommand 'grammar-selector:set-syntax',
  orig: 'grammar-selector:show'
  scope: 'atom-editor'

# Composed commands
# You can pass it an array of commands
aliasCommand 'wq',
orig: ['core:save', 'core:close']
```

## Running Tests
```sh
> apm test
```
