class BackboneLeaflet.Views.Geocode extends Backbone.View

  template: JST['geocoder/geocode']
  tagName: 'li'

  events:
    'click .go': '_setLocation'


  initialize: (options)->
    @parent_view = options.parent_view
    @render()

  render: ->
    @$el.html(@template(geocode: @model))
    @

  _setLocation: ->
    @parent_view.setLocation(@model.get('latitude'), @model.get('longitude'))