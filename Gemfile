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
# gem 'redis', '~> 3.0'
gem 'devise'
gem 'insightly2', github: 'rept/insightly-ruby'
gem 'sendgrid-ruby'
gem 'medium'
gem 'sidekiq'
gem 'rest-client'

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
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
