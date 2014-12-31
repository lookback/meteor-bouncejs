Should = should()

describe 'Bounce', ->

  it 'should be available', ->
    # window.Bounce might be undefined
    Should.exist(Bounce)
    Bounce.should.be.an 'function'

  it 'should return a handle', ->
    anim = new Bounce()
    anim.should.be.an 'object'
