aliasCommand = require '../lib/atom-alias-command'

describe "aliasCommand", ->
  it "doesn't explode", ->
    aliasCommand 'new:action',
      orig: 'boring:old-action'
