class Easings.HardBounce extends Easings.Bounce
  oscillation: (t) ->
    Math.abs Math.cos(@omega * t)
