{CompositeDisposable} = require 'atom'

module.exports = aliasCommand = (as, {orig, scope}) ->
  scope ?= 'atom-workspace'
  aliasCommand.subscriptions.add(
    atom.commands.add scope, as, (event) ->
      atom.commands.dispatch event.target, orig
  )

aliasCommand.activate = ->
  @subscriptions = new CompositeDisposable

aliasCommand.deactivate = ->
  @subscriptions.dispose()
