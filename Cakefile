{spawn} = require 'child_process'

task 'build', 'Builds JavaScript files from source', ->
  spawn 'npm', ['run', 'build'], stdio: 'inherit'

task 'test', 'Runs tests', ->
  spawn './node_modules/.bin/coffee', ['test/test.coffee'], stdio: 'inherit'
