module.exports = aliasCommand = (as, {orig, scope}) ->
  scope ?= 'atom-workspace'
  atom.commands.add scope, as, (event) ->
    atom.commands.dispatch event.target, orig
