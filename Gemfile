source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.3.3'

gem 'rails', '~> 5.0.2'
gem 'sass-rails', '~> 5.0.6'
gem 'sprockets-rails', '~> 3.2.0'
gem 'sprockets', '~> 3.7.0'
gem 'sprockets-es6', '~> 0.9.2' # NOTE: This goes away when we can hit sprockets 4 again
gem 'babel-transpiler'
gem 'pg'
gem 'uglifier', '>= 1.3.0'
gem 'puma' # webserver
gem 'activeadmin', github: 'activeadmin' # Admin interface
gem 'active_admin_theme' # Theme up activeadmin a bit, flatter
gem 'devise'          # authentication
gem 'pundit'          # authorization
gem 'skywalker'
gem 'lograge' # Better logs for production
gem 'carrierwave', github: 'carrierwaveuploader/carrierwave' # File uploads
gem 'carrierwave-aws' # AWS support for CarrierWave
gem 'render_anywhere', require: false

## Asset bits
gem 'therubyracer'
gem 'haml'
gem 'foundation-rails', '~> 6.1.2.0'
gem 'foundation-icons-sass-rails'
gem 'gravtastic'
gem 'font-awesome-rails'
gem 'purecss-sass', '~> 0.6.2'
gem "react_on_rails", "~> 6"
gem 'mini_racer', platforms: :ruby
# Helpers for meta tags
gem 'meta-tags'
## Slugs
gem 'friendly_id', '~> 5.1.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

group :development do
  gem 'pre-commit', require: false
  gem 'rubocop', require: false
  gem 'rack-mini-profiler' # nice window showing request problems on all pages
  gem 'better_errors'
  gem 'guard', require: false
  gem 'guard-livereload', require: false
  gem 'rack-livereload'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :development, :test do
  gem 'brakeman', require: false
  gem 'byebug'
  gem 'pry'
  gem 'factory_girl_rails'
  gem 'faker', '~> 1.7.1'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'shoulda-callback-matchers', '~> 1.1.1'
  gem 'stripe-ruby-mock', '~> 2.1.1', require: 'stripe_mock'
  gem 'spinach-rails'
  gem 'wkhtmltopdf-binary-edge', '~> 0.12.4.0' # PDFkit works on env development & test  # Generate API documentation from request specs
  gem 'rspec_api_documentation'
end

group :test do
  gem 'puffing-billy'
  gem 'thin'
  gem 'capybara'
  gem 'chromedriver-helper'
  gem 'database_cleaner'
  gem 'launchy', require: false
  gem 'selenium-webdriver'
  gem 'poltergeist'
  gem 'webmock'
  gem 'simplecov', require: false
  gem 'simplecov-json', require: false
  gem 'simplecov-rcov', require: false
end

group :production do
  gem 'skylight', '1.0.1'
  ## Enable rack timeouts
  gem 'rack-timeout'  
  gem 'rails_12factor'
end

