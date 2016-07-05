console   = require 'console'
colors    = require 'colors'
gulp      = require 'gulp'
stage     = require('ewg-config').stage
ws        = require 'easy-website-generator'

module.exports =
  bootstrap: =>
    ws.setGulpRefference gulp

    console.log ' -----------------------------------'.green
    console.log " | starting on stage #{stage.current().red}".green
    console.log ' -----------------------------------'.green

    require('require-dir')('../' + ws.config.generators.folder, recurse: true)

    gulp.task('default', ['serve'])
