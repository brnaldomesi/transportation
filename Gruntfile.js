var localConfig = require('./grunt-local-config');

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
    localConfig: localConfig,
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
    php: {
      dist: {
        options: {
          port: 9000,
          open: true,
          base: '<%= localConfig.local_repo_path %>/app/'
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
        'path': '<%= localConfig.local_repo_path %>/app'
      },
      staging: {
        'title': 'staging',
        'database': 'kstg',
        'user': 'dev_user',
        'pass': 'mysql',
        'host': 'localhost',
        'url': 'http://kstg.dev.derrickshowers.com',
        'path': '/var/www/sites/kstg',
        'ssh_host': '<%= localConfig.server_user %>@dev.derrickshowers.com'
      }
    },
    rsync: {
      pull_uploads: {
        options: {
          args: ['--verbose', '--progress', '-rlt', '--compress', '--omit-dir-times'],
          src: '<%= localConfig.server_user %>@dev.derrickshowers.com:/var/www/sites/kstg/wp-content/uploads/',
          dest: '<%= localConfig.local_repo_path %>/app/wp-content/uploads/',
          ssh: true,
          delete: true
        }
      },
      pull_uploads_prod: {
        options: {
          args: ['--verbose', '--progress', '-rlt', '--compress', '--omit-dir-times'],
          src: 'kevinsmithgroup@kevinsmithgroup.com:/home/kevinsmithgroup/wordpress/wp-content/uploads/',
          dest: '<%= localConfig.local_repo_path %>/app/wp-content/uploads/',
          ssh: true,
          delete: true
        }
      },
      pull_plugins: {
        options: {
          args: ['--verbose', '--progress', '-rlt', '--compress', '--omit-dir-times'],
          src: '<%= localConfig.server_user %>@dev.derrickshowers.com:/var/www/sites/kstg/wp-content/plugins/',
          dest: '<%= localConfig.local_repo_path %>/app/wp-content/plugins/',
          ssh: true,
          delete: true
        }
      },
      pull_plugins_prod: {
        options: {
          args: ['--verbose', '--progress', '-rlt', '--compress', '--omit-dir-times'],
          src: 'kevinsmithgroup@kevinsmithgroup.com:/home/kevinsmithgroup/wordpress/wp-content/plugins/',
          dest: '<%= localConfig.local_repo_path %>/app/wp-content/plugins/',
          ssh: true,
          delete: true
        }
      },
      push_uploads: {
        options: {
          args: ['--verbose', '--progress', '-rlt', '--compress', '--omit-dir-times'],
          src: '<%= localConfig.local_repo_path %>/app/wp-content/uploads/',
          dest: '<%= localConfig.server_user %>@dev.derrickshowers.com:/var/www/sites/kstg/wp-content/uploads/',
          ssh: true,
          delete: true
        }
      },
      push_plugins: {
        options: {
          args: ['--verbose', '--progress', '-rlt', '--compress', '--omit-dir-times'],
          src: '<%= localConfig.local_repo_path %>/app/wp-content/plugins/',
          dest: '<%= localConfig.server_user %>@dev.derrickshowers.com:/var/www/sites/kstg/wp-content/plugins/',
          ssh: true,
          delete: true
        }
      },
      deploy_theme: {
        options: {
          args: ['--verbose', '--progress', '-rlt', '--compress', '--omit-dir-times'],
          exclude: ['scss','.sass-cache'],
          src: '<%= localConfig.local_repo_path %>/app/wp-content/themes/kstg/',
          dest: '<%= localConfig.server_user %>@dev.derrickshowers.com:/var/www/sites/kstg/wp-content/themes/kstg/',
          ssh: true,
          delete: true
        }
      },
      deploy_theme_prod: {
        options: {
          args: ['--verbose', '--progress', '-rlt', '--compress', '--omit-dir-times'],
          exclude: ['scss','.sass-cache'],
          src: '<%= localConfig.local_repo_path %>/app/wp-content/themes/kstg/',
          dest: 'kevinsmithgroup@kevinsmithgroup.com:/home/kevinsmithgroup/wordpress/wp-content/themes/kstg/',
          ssh: true,
          delete: true
        }
      }
    },
    prompt: {
      git_master: {
        options: {
          questions: [
            {
              config: 'continue',
              type: 'confirm',
              message: 'You are about to deploy the kstg theme to staging. Are you sure you\'re on master?',
              default: false
            }
          ],
          then: function(results, done) {
            if (results.continue) {
              done();
            } else {
              grunt.fail.warn('Please make sure you\'re deploying master');
            }
          }
        }
      },
      git_master_prod: {
        options: {
          questions: [
            {
              config: 'continue',
              type: 'confirm',
              message: 'You are about to deploy the kstg theme to PRODUCTION. Are you sure you\'re on master?',
              default: false
            }
          ],
          then: function(results, done) {
            if (results.continue) {
              done();
            } else {
              grunt.fail.warn('Please make sure you\'re deploying master');
            }
          }
        }
      }
    }
  });

  // load plugins
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-wordpress-deploy');
  grunt.loadNpmTasks('grunt-rsync');
  grunt.loadNpmTasks('grunt-prompt');
  grunt.loadNpmTasks('grunt-php');

  // tasks
  grunt.registerTask('dev', ['php', 'watch']);
  grunt.registerTask('pull', ['pull_db', 'rsync:pull_uploads', 'rsync:pull_plugins']);
  grunt.registerTask('pull_prod', ['rsync:pull_uploads_prod', 'rsync:pull_plugins_prod']);
  grunt.registerTask('push', ['push_db', 'rsync:push_uploads', 'rsync:push_plugins']);
  grunt.registerTask('deploy_theme', ['prompt:git_master', 'rsync:deploy_theme']);
  grunt.registerTask('deploy_theme_prod', ['prompt:git_master_prod', 'rsync:deploy_theme_prod']);

};
