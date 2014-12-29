if Meteor.isClient

  Template.demo.events(
    'click #animate': (evt, tmpl) ->

      $box = $('.box')

      anim = new Bounce()
        .scale(
          from: {x: 1, y: 1}
          to:   {x: 1.5, y: 1.5}
          duration: 400
          bounces: 6
          stiffness: 2
        )
        .translate(
          to:   {x: 100, y: 100}
          bounces: 4
          stiffness: 4
        )
        .rotate(
          to: 45
          bounces: 3
          stiffness: 6
        )
        .applyTo($box)
  )
