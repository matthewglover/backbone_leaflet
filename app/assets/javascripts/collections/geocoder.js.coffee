class BackboneLeaflet.Collections.Geocoder extends Backbone.Collection

  model: BackboneLeaflet.Models.Geocode
  url: 'http://www.datasciencetoolkit.org/maps/api/geocode/json'

  initialize: ->

  geocode: (address)->
    @fetch(
      success: @onSuccess
      error: @onError
      crossDomain: true
      data:
        address: address
      )

  onSuccess: (model, response, options)=>
    # console.log(response)

  onError: (model, response, options)=>
    console.log('data error')

  parse: (response)->
    if response.status == 'OK'
      response.results
    else
      console.log "Geocoder response error"
