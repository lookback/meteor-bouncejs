Matrix4D = share.Matrix4D
Vector2D = share.Vector2D

class Components.Translate extends Components.Component
  from:
    x: 0
    y: 0

  to:
    x: 0
    y: 0

  constructor: ->
    super
    @fromVector = new Vector2D @from.x, @from.y
    @toVector = new Vector2D @to.x, @to.y
    @diff = @toVector.clone().subtract @fromVector

  getMatrix: (x, y) ->
    z = 0
    new Matrix4D [
      1, 0, 0, x
      0, 1, 0, y
      0, 0, 1, z
      0, 0, 0, 1
    ]

  getEasedMatrix: (ratio) ->
    easedRatio = @calculateEase ratio
    easedVector = @fromVector.clone().add @diff.clone().multiply(easedRatio)
    @getMatrix easedVector.x, easedVector.y
