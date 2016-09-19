{CompositeDisposable} = require 'atom'

typeIsArray = Array.isArray || ( value ) -> return {}.toString.call( value ) is '[object Array]'

module.exports = aliasCommand = (as, {orig, scope}) ->
  scope ?= 'atom-workspace'
  aliasCommand.subscriptions.add(
    atom.commands.add scope, as, (event) ->
      if typeIsArray orig
        atom.commands.dispatch event.target, o for o in orig
      else
        atom.commands.dispatch event.target, orig
  )

aliasCommand.activate = ->
  @subscriptions = new CompositeDisposable

aliasCommand.deactivate = ->
  @subscriptions.dispose()
