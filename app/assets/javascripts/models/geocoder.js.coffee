class BackboneLeaflet.Models.Geocoder extends Backbone.Model

  url: 'http://www.datasciencetoolkit.org/maps/api/geocode/json'

  initialize: ->

  geocode: (address)->
    @fetch(
      success: @onFetched
      error: @onError
      crossDomain: true
      data:
        address: address
      )

  onFetched: (model, response, options)=>
    console.log('address fetched..')
    console.log(model)
    console.log(response)

  onError: (model, response, options)=>
    console.log('data error')