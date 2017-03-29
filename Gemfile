source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'redis', '~> 3.0'
gem 'insightly2', github: 'rept/insightly-ruby'
gem 'sendgrid-ruby'
gem 'sinatra', :require => false
gem 'sidekiq'
gem 'contentful'
gem 'rest-client'
gem 'materialize-sass'
gem 'rollbar'

group :development, :test do
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'simplecov'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'rails-controller-testing'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'webmock'
  gem 'vcr'
  gem 'byebug', platform: :mri
  gem 'sqlite3'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem "letter_opener"
  gem 'foreman'
end

group :production do
  gem 'pg',' ~> 0.18'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
