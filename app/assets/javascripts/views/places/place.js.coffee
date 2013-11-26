class BackboneLeaflet.Views.Place extends Backbone.View

  template: JST['places/place']
  tagName: 'li'

  events:
    'click .showHide': 'toggleMap'

  initialize: ->
    # console.log(@model.get('factual_id') + " " + @model.get('name'))

  render: ->
    $(@el).html(@template(place: @model))
    @

  toggleMap: ->
    console.log(@model.get('name'))
    @model.toggleShowOnMap()