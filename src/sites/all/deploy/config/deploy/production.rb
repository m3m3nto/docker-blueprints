### This file contains stage-specific settings ###

# Set ssh port
set :port, 22

# Set the deployment directory on the target hosts.
set :deploy_to, "/var/www/apps/#{application}"

# List the Drupal multi-site folders.  Use "default" if no multi-sites are installed.
set :dsites, ["xxx", "yyy"] 
 
# The hostnames to deploy to.
role :web, "zzz"
 
# Specify one of the web servers to use for database backups or updates.
# This server should also be running Drupal.
role :db, "zzz", :primary => true
 
# The username on the target system, if different from your local username
set :user, "webdev"

# Ssh options
ssh_options[:user] = 'webdev'
ssh_options[:forward_agent] = false
 
# The path to drush
set :drush, "cd #{current_path} ; /usr/bin/drush"

