class RailsChallenge.Models.Charge extends Backbone.Model
  paramRoot: 'charge'

  defaults:
    created: null
    paid: null
    amount: null
    currency: null
    refunded: null

class RailsChallenge.Collections.ChargesCollection extends Backbone.Collection
  model: RailsChallenge.Models.Charge
  url: '/charges'
