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
    },
    wordpressdeploy: {
      options: {
        backup_dir: 'backups/',
        target: 'staging',
        rsync_args: ['--verbose', '--progress', '-rlpt', '--compress', '--omit-dir-times', '--delete'],
        exclusions: ['Gruntfile.js', '.git/', 'tmp/*', 'backups/', 'wp-config.php', 'composer.json', 'composer.lock', 'README.md', '.gitignore', 'package.json', 'node_modules']
      },
      local: {
        'title': 'local',
        'database': 'kstg',
        'user': 'root',
        'host': '127.0.0.1',
        'url': 'http://localhost:9000',
        'path': '/Users/dshowers/Development/kevin-smith-transpotation-group/app'
      },
      staging: {
        'title': 'staging',
        'database': 'kstg',
        'user': 'dev_user',
        'pass': 'mysql',
        'host': 'localhost',
        'url': 'http://kstg.dev.derrickshowers.com',
        'path': '/var/www/sites/kstg',
        'ssh_host': 'dshowers@dev.derrickshowers.com'
      }
    },
    rsync: {
      update_uploads: {
        options: {
          args: ['--verbose', '--progress', '-rlpt', '--compress', '--omit-dir-times'],
          src: 'dshowers@dev.derrickshowers.com:/var/www/sites/kstg/wp-content/uploads/',
          dest: '/Users/dshowers/Development/kevin-smith-transpotation-group/app/wp-content/uploads/',
          ssh: true
        }
      }
    }
  });

  // load plugins
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-wordpress-deploy');
  grunt.loadNpmTasks("grunt-rsync");

  // tasks
  grunt.registerTask('dev', ['watch']);
  grunt.registerTask('update', ['pull_db']);

};
