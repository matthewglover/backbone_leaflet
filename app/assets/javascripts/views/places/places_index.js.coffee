class BackboneLeaflet.Views.PlacesIndex extends Backbone.View

  template: JST['places/index']

  events:
    'submit #new_location': 'changeLocation'

  initialize: ->
    @listenTo(@collection, 'reset', @render)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendEntry)
    @

  appendEntry: (place)->
    place = new BackboneLeaflet.Views.Place(model: place)
    @$('#PlaceList').append(place.render().el)

  changeLocation: (event)=>
    event.preventDefault()
    lat = $('#new_latitude').val()
    long = $('#new_longitude').val()
    @collection.setLocation(lat,long)
    console.log('change location')
