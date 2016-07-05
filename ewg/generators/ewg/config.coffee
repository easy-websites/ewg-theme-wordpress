gulp = require 'gulp'
log  = require 'ewg-logging'
ws   = require 'easy-website-generator'

gulp.task 'config', ->
  log.green ws.configFile
  log.info ws.config
