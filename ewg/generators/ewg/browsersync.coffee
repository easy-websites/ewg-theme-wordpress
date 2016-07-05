gulp        = require 'gulp'
browserSync = require 'browser-sync'
ws          = require 'easy-website-generator'

gulp.task 'browser-sync', ->
  configServer = ws.config.server

  browserSync.init configServer
