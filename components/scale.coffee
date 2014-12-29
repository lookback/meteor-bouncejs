Matrix4D = share.Matrix4D
Vector2D = share.Vector2D

class Components.Scale extends Components.Component
  from:
    x: 0.5
    y: 0.5

  to:
    x: 1
    y: 1

  constructor: ->
    super
    @fromVector = new Vector2D @from.x, @from.y
    @toVector = new Vector2D @to.x, @to.y
    @diff = @toVector.clone().subtract @fromVector

  getMatrix: (x, y) ->
    z = 1
    new Matrix4D [
      x, 0, 0, 0
      0, y, 0, 0
      0, 0, z, 0
      0, 0, 0, 1
    ]

  getEasedMatrix: (ratio) ->
    easedRatio = @calculateEase ratio
    easedVector = @fromVector.clone().add @diff.clone().multiply(easedRatio)
    @getMatrix easedVector.x, easedVector.y
