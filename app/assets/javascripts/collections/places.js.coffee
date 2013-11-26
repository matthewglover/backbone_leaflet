class BackboneLeaflet.Collections.Places extends Backbone.Collection

  model: BackboneLeaflet.Models.Place
  url: '/search'

  initialize: ->

  setLocation: (latitude, longitude)->
    @trigger('setLocation', latitude, longitude)
    @fetch(
      success: @onFetched
      error: @onError
      reset: true
      data:
        latitude: latitude
        longitude: longitude
      )

  onFetched: (collection, response, options)=>
    # console.log('data fetched..')

  onError: (collection, response, options)=>
    # console.log('data error')