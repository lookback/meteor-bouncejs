class Easings.HardSway extends Easings.Sway
  oscillation: (t) ->
    Math.abs Math.sin(@omega * t)
