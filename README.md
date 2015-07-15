# ksvin-smith-transpotation-group
Wordpress site for new luxury transportation company

## Directory Structure

This site contains static pages and a Wordpress app. Therefore, the setup that makes the most sense is as follows:

```
.
+-- README.md
+-- .gitignore
+-- ... (any other dev files)
+-- _app
+-- _landingPages
```

Where `landingPages/` contains landing pages separated into individual directories and `app/` contains all Wordpress resources (with the exception of config files). The root contains anything that would be necessary for local development. In the end, anything within the app directory gets deployed 1:1 to production (same with directories with `landingPages/`).

## Grunt

To get started, run `npm install`. Next, configure your local environment settings by copying 'grunt-local-config-default.js' to 'grunt-local-config.js' and update properties--more details located at the top of the file. Make sure your prereqs (below) are met, and you're all set.

### Prereqs

Ensure your ssh key is authorized on the dev server (dev.derrickshowers.com). To do so, run the following command (replacing `<user>` with your username).

    cat ~/.ssh/id_rsa.pub | ssh <user>@dev.derrickshowers.com 'cat >> .ssh/authorized_keys'

Make sure you can log onto the server without a password.

    ssh <user>@dev.derrickshowers.com

That's it!

### Available Tasks

`grunt dev`: Use this before you start local development, it will take care of things like watching and compiling your sass.

`grunt pull`: Pulls the most recent version of the database, uploads, and plugins. **Note: this will overwrite everything you have locally, so make sure to run this prior to making any local updates to your database.**

`grunt push`: Pushes your local database changes to the staging server, as well as anything in uploads and plugins. **Note: this will overwrite the database, uploads, and plugins on the server, so make sure you did a pull prior to the updates you just made.**

`grunt deploy_theme`: Pushes the theme code (the important stuff) to the staging server. This should only be done when you're at a point you want to deploy. Master should be the only branch that is ever deployed, so make sure you have master checked out, and it's in sync with origin/master (e.g. Did you do a `git pull`?).

### Uh oh!

If something goes wrong with the database sync, don't worry--all is not lost (hopefully!). You should have a 'backups' directory after running `grunt pull` or `grung push` in the root of your project. There you will find a copy of the local and server databases for each time the task was run. If you need to revert to one fo these versions, you can import the datbase doing something like:

    mysql -u <username> -p <db_name--kstg?> < path/to/your/file.sql
