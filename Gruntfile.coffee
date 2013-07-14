module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-csso'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.initConfig
    sass:
      options:
        style: "expanded"
      compile:
        files: "css/master.src.css": ["sass/master.scss"]
    csso:
      dist:
        files: "css/master.css": ["css/master.src.css"]
    watch:
      css:
        files: "sass/**/*.scss",
        tasks: ["sass","csso"]

  grunt.registerTask "default", ["sass","csso"]
  grunt.registerTask "css", ["sass","csso"]