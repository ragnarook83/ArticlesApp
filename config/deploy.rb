# frozen_string_literal: true

require 'mina/rails'
require 'mina/git'
require 'mina/rbenv'

# Application name and repository
set :application_name, 'ArticlesApp'
set :repository, 'git@github.com:ragnarook83/ArticlesApp.git'

# Application details
set :shared_dirs, fetch(:shared_dirs, []).push('public/assets')
set :shared_files, fetch(:shared_files, []).push('.rbenv-vars', 'config/master.key')

# Machine details
set :domain, 'localhost'
set :port, '22'
set :user, 'ragnarook83'
set :forward_agent, true
set :deploy_to, '/var/rails/articles'
set :rails_env, 'production'
set :branch, 'main'

desc 'Loads the remote environment'
task :remote_environment do
  command %(source $HOME/.zshrc)
  invoke :'rbenv:load'
end

desc 'Prepares the machine for deployment'
task :setup do
  command %(rbenv install 3.1.2 --skip-existing)
  command %(rbenv global 3.1.2)
  command %(gem install bundler)
end

desc 'Deploys the current version to the server'
task :deploy do
  invoke :'git:ensure_pushed'
  deploy do
    invoke :'git:clone'
    invoke :'deploy:link_shared_paths'
    invoke :'bundle:install'
    invoke :'rails:db_migrate'
    invoke :'rails:assets_precompile'
    invoke :'deploy:cleanup'

    on :launch do
      in_path(fetch(:current_path)) do
        command %(mkdir -p tmp/)
        command %(touch tmp/restart.txt)
      end
    end
  end

  # run(:local){ echo 'Done.' }
end
