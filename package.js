var version = '0.8.1',
    where = 'client'

Package.describe({
  name: 'lookback:bouncejs',
  summary: 'Bounce.js from Tictail packaged for Meteor.',
  version: version + '_2',
  git: 'https://github.com/lookback/meteor-bouncejs.git'
});

Npm.depends({
  "bounce.js": version
})

Package.on_use(function (api) {
  api.versionsFrom('METEOR@0.9.3')
  api.export('Bounce', where)
  api.addFiles([
    '.npm/package/node_modules/bounce.js/bounce.js',
    'export.js'
  ]
  , where)
});

Package.on_test(function(api) {
  api.use(['coffeescript', 'lookback:bouncejs', 'practicalmeteor:munit'], where)

  api.addFiles(['tests/bouncejs-test.coffee'], where)
})
