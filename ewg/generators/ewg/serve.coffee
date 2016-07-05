gulp   = require 'gulp'
reload = require('browser-sync').reload
ws     = require 'easy-website-generator'

gulp.task 'serve', [
  'generate'
  'browser-sync'
], ->
  sassFiles = [
    ws.config.basePath + '/**/*.sass'
  ]

  gulp.watch sassFiles, [ 'compile-sass:generate' ]

  gulp.watch ws.config.basePath + '/coffee/**/*.coffee', [ 'compile-coffee:generate' ]

  otherFiles = [
    ws.config.basePath + '/**/*.css'
    ws.config.basePath + '/**/*.js'
    ws.config.basePath + '/**/*.php'
  ]
  gulp.watch otherFiles, reload
