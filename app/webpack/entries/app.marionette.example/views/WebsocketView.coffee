'use strict'
# system
Marionette = require 'Marionette'
# app
globalCh    = require 'globalCh'

Parent = Marionette.ItemView
module.exports = Parent.extend
  template: require '../partials/websocket'

  events:
    'click [data-action="websocket-connect"]': 'connect'

  connect: ->
    globalCh.trigger 'websocket:connect'