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

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
