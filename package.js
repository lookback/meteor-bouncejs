Package.describe({
  name: 'lookback:bouncejs',
  summary: 'Bounce.js from Tictail packaged for Meteor.',
  version: '0.8.1_1'
});

Package.on_use(function (api) {
  api.use('coffeescript')

  api.add_files([
    'math/matrix4d.coffee',
    'math/vector2d.coffee',

    'easing/easings.js',
    'easing/easing.coffee',
    'easing/bounce.coffee',
    'easing/hardbounce.coffee',
    'easing/sway.coffee',
    'easing/hardsway.coffee',

    'components/components.js',
    'components/component.coffee',
    'components/rotate.coffee',
    'components/translate.coffee',
    'components/skew.coffee',
    'components/scale.coffee',

    'bounce.coffee'
  ], 'client')

  api.export('Bounce', 'client')
});
