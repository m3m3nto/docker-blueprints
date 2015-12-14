default_run_options[:pty] = true

# The project name.
set :application, "xxx"
 
# Set the repository type and location to deploy from.
set :scm, :git
set :scm_verbose, true
set :repository, 'git@bitbucket.org:xxx/xxx.git'
set :branch, "master"
 
# Use a remote cache to speed things up
set :deploy_via, :remote_cache
 
# Multistage support - see config/deploy/[STAGE].rb for specific configs
set :default_stage, "production"
set :stages, %w(production staging)

# Generally don't need sudo for this deploy setup
set :use_sudo, false

# Submodule initialization
# set :git_enable_submodules, 1

