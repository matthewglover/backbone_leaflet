class BackboneLeaflet.Models.Place extends Backbone.Model

  defaults:
    show: false

  initialize: ->

  toggleShow: ->
    @set('show', !@get('show'))
    @trigger('toggle_show')

