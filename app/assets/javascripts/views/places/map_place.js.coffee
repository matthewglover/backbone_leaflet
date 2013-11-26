class BackboneLeaflet.Views.MapPlace extends Backbone.View

  initialize: (options)->
    @map = options.map
    @listenTo(@model, 'toggle_show', @toggleShow)

  toggleShow: =>
    if @model.get('show')
      @marker = @map.addMarker(@model.get('latitude'), @model.get('longitude'))
    else
      @map.removeMarker(@marker)