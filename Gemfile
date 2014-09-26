source 'https://rubygems.org'

gem 'rails', '~> 4.0.0'

# application server
gem 'unicorn'

# databases
gem 'sqlite3', groups: [:development, :test]
gem 'pg', group: :production

# assets
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
# TODO: upgrade to latest bootstrap
gem 'bootstrap-sass', github: 'thomas-mcdonald/bootstrap-sass'

# authentication
gem 'omniauth'
gem 'omniauth-github'

# social
gem 'twitter' # used for posting updates

# authorization
gem "pundit"

# configuration
gem 'dotenv-rails' # for managing environment variables
gem 'whenever', :require => false # for managing crontab

# deployment and provisioning
gem 'sunzi'
gem 'capistrano', '~> 2.15'

# monitoring/reporting
gem 'newrelic_rpm'
gem 'bugsnag'

# markdown processing
gem 'redcarpet'

group :production do
  gem 'therubyracer' # for asset compilation
end

group :test do
  gem 'rspec-rails', "3.0.0.beta1"
  gem 'shoulda'
  gem 'factory_girl_rails', '~> 4.4.0'
  gem 'webmock'
end

# api
gem 'jbuilder', '~> 1.2'

group :development, :test do
  gem 'pry'
  gem 'guard'
  gem 'guard-rspec'
  gem 'terminal-notifier-guard'
end
