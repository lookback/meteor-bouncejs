Matrix4D = share.Matrix4D
Vector2D = share.Vector2D

class Components.Rotate extends Components.Component
  from: 0
  to: 90

  constructor: ->
    super
    @diff = @to - @from

  getMatrix: (degrees) ->
    radians = (degrees / 180) * Math.PI
    c = Math.cos radians
    s = Math.sin radians
    new Matrix4D [
      c, -s, 0, 0
      s,  c, 0, 0
      0,  0, 1, 0
      0,  0, 0, 1
    ]

  getEasedMatrix: (ratio) ->
    easedRatio = @calculateEase ratio
    easedAngle = @from + @diff * easedRatio
    @getMatrix easedAngle
