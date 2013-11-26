class BackboneLeaflet.Views.PlacesIndex extends Backbone.View

  template: JST['places/index']

  initialize: ->
    console.log('Creating PlacesIndex View')
    @listenTo(@collection, 'reset', @render)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendEntry)
    @

  appendEntry: (place)->
    place = new BackboneLeaflet.Views.Place(model: place)
    @$('#PlaceList').append(place.render().el)

