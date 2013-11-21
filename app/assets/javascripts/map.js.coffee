# map.js.coffee

class BackboneLeaflet.Custom.Map
  _.extend @prototype, Backbone.Events

  constructor: ->
    alert "map initialized"
