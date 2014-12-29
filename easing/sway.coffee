class Easings.Sway extends Easings.Bounce
  calculate: (ratio) ->
    return 0 if ratio >= 1

    t = ratio * @limit
    @exponent(t) * @oscillation(t)

  oscillation: (t) ->
    Math.sin @omega * t
