{CompositeDisposable} = require 'atom'

typeIsArray = Array.isArray || ( value ) -> return {}.toString.call( value ) is '[object Array]'

createAlias = (as, orig, scope = 'atom-workspace') ->
  aliasCommand.subscriptions.add(
    atom.commands.add scope, as, (event) ->
      atom.commands.dispatch event.target, orig
  )

module.exports = aliasCommand = (as, {orig, scope}) ->
  scope ?= 'atom-workspace'
  if typeIsArray orig
    createAlias(as, o, scope) for o in orig
  else
    createAlias(as, orig, scope)

aliasCommand.activate = ->
  @subscriptions = new CompositeDisposable

aliasCommand.deactivate = ->
  @subscriptions.dispose()
