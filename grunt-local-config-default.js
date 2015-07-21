/**
 * This is the local config file for grunt. Grunt will not work without modifying
 * properties in this file so that they match your local environment.
 *
 * First, rename this file 'grunt-local-config.js'. Git is already configured so that
 * it will ignore your copy (if you see 'grunt-local-config-default.js' modified when
 * doing a 'git status,' it means you modified the wrong file).
 *
 * After renaming the file, change the properties in the 'config' object below.
 *
 * server_user: Username for dev.derrickshowers.com. Make sure you have your ssh key
 *              set as an authorized key on the server. Instructions on how to do that
 *              are in the README.
 *
 * local_repo_path: the path for the kstg repo on your machine.
 */

var config = {
  server_user:        'dshowers',
  local_repo_path:    '/Users/dshowers/Development/kevin-smith-transpotation-group'
};

module.exports = config;
