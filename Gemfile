source 'https://rubygems.org'

gem 'rails', '4.1.7'

# Database
gem 'pg'
gem 'migration_comments'

# Assets and etc.
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'therubyracer',  platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks'

# Locale
gem 'russian'
gem 'devise-russian'

# Admin area
gem 'activeadmin', github: 'activeadmin'
gem 'activeadmin-axlsx', github: 'sponomarev/activeadmin-axlsx'
gem 'devise'

# Settings
gem 'figaro'

group :development do
  # Annotate models
  gem 'annotate'

  # Debuging and profiling
  gem 'awesome_print'
  gem 'i18n-debug'

  # Code styling
  gem 'rubocop', require: false

  # Guards
  gem 'guard', require: false
  gem 'guard-annotate', '~> 1.1.0', require: false
  gem 'guard-rubocop', require: false
  gem 'guard-bundler', require: false

  # Deploy
  gem 'snp-best-practices', git: 'git@git.snpdev.ru:saltpepper/snp-best-practices.git'
  gem 'capistrano-scm-copy'
end

group :production do
  gem 'unicorn'
end
