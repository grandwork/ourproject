RailsChallenge.Views.Charges ||= {}

class RailsChallenge.Views.Charges.ShowView extends Backbone.View
  template: JST["backbone/templates/charges/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
