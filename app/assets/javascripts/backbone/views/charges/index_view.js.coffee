RailsChallenge.Views.Charges ||= {}

class RailsChallenge.Views.Charges.IndexView extends Backbone.View
  template: JST["backbone/templates/charges/index"]

  initialize: () ->
    @options.charges.bind('reset', @addAll)

  addAll: () =>
    @options.charges.each(@addOne)

  addOne: (charge) =>
    view = new RailsChallenge.Views.Charges.ChargeView({model : charge})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(charges: @options.charges.toJSON() ))
    @addAll()

    return this
