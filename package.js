var version = '0.8.1'

Package.describe({
  name: 'lookback:bouncejs',
  summary: 'Bounce.js from Tictail packaged for Meteor.',
  version: version + '_1',
  git: 'https://github.com/lookback/meteor-bouncejs.git'
});

Npm.depends({
  "bounce.js": version
})

Package.on_use(function (api) {
  api.versionsFrom('METEOR@0.9.3')
  api.export('Bounce', 'client')
  api.addFiles([
    '.npm/package/node_modules/bounce.js/bounce.js',
    'export.js'
  ]
  , 'client')
});
