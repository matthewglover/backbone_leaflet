class BackboneLeaflet.Views.PlacesIndex extends Backbone.View

  template: JST['places/index']

  render: ->
    $(@el).html(@template())
    @
