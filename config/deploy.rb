set :application, 'tt-base'
set :repo_url, 'git@github.com:sponomarev/tt-base.git'

set :linked_files, %w(config/database.yml config/application.yml)

# rbenv config
set :rbenv_ruby, '2.1.5'

set :scm, :copy
