module.exports = function(grunt) {

  var basePath = 'app/wp-content/themes/kstg/';

  var paths = {
    base: 'app/wp-content/themes/kstg/'
  };

  // Project configuration.
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    config: {
      paths: paths
    },
    sass: {
      dist: {
        files: {
          '<%= config.paths.base %>/library/css/style.css': '<%= config.paths.base %>/library/scss/style.scss'
        }
      }
    },
    watch: {
      css: {
        files: ['<%= config.paths.base %>/library/scss/**/*.scss'],
        tasks: ['sass'],
        options: {
          spawn: false
        }
      }
    }
  });

  // load plugins
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-sass');

  // tasks
  grunt.registerTask('dev', ['watch']);

};
