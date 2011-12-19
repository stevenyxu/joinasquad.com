require './config/boot'
require 'airbrake/capistrano'

set :application, "joinasquad.com"
set :repository,  "git@github.com:cairo140/joinasquad.com.git"

set :scm, :git

role :web, "joinasquad.com"
role :app, "joinasquad.com"
role :db,  "joinasquad.com", :primary => true

set :user, 'steven'
set :use_sudo, false
set :deploy_to, "/home/#{user}/www/#{application}"
set :deploy_via, :remote_cache
set :passenger_port, 9999

after 'deploy:update_code', 'deploy:symlink_configs'

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run <<-CMD
      if [[ -f #{release_path}/tmp/pids/passenger.#{passenger_port}.pid ]]; 
      then 
        cd #{deploy_to}/current && bundle exec passenger stop -p #{passenger_port} --pid-file #{release_path}/tmp/pids/passenger.#{passenger_port}.pid;
      fi
    CMD
    # restart passenger standalone on the specified port/environment and as a daemon
    run "cd #{deploy_to}/current && bundle exec passenger start -e #{rails_env} -p #{passenger_port} -d -a 127.0.0.1"
  end

  task :symlink_configs do
    run "if [[ -d #{shared_path}/config ]]; then ln -fs #{shared_path}/config/* #{release_path}/config/; fi"
  end
end
