RailsChallenge.Views.Charges ||= {}

class RailsChallenge.Views.Charges.ChargeView extends Backbone.View
  template: JST["backbone/templates/charges/charge"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
