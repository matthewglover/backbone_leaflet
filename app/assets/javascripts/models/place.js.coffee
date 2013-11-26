class BackboneLeaflet.Models.Place extends Backbone.Model

  defaults:
    show_on_map: false

  initialize: ->
    # console.log("Place initialized")

  toggleShowOnMap: ->
    @set('show_on_map', !@get('show_on_map'))
    # console.log (@get('show_on_map'))

