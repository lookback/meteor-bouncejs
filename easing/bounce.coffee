class Easings.Bounce extends Easings.Easing
  bounces: 4
  stiffness: 3

  constructor: (options = {}) ->
    super

    @stiffness = options.stiffness if options.stiffness?
    @bounces = options.bounces if options.bounces?
    @alpha = @stiffness / 100

    threshold = 0.005 / Math.pow(10, @stiffness)
    @limit = Math.floor(Math.log(threshold) / -@alpha)
    @omega = @bounces * Math.PI / @limit

  calculate: (ratio) ->
    return 1 if ratio >= 1

    t = ratio * @limit
    1 - @exponent(t) * @oscillation(t)

  exponent: (t) ->
    Math.pow(Math.E, -@alpha * t)

  oscillation: (t) ->
    Math.cos @omega * t

  serialize: ->
    stiffness: @stiffness
    bounces: @bounces
