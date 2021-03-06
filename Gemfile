source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', github: "rails/rails", branch: "6-0-stable"


# TAAALK ADDITIONS

# amazon S3
gem "aws-sdk-s3", require: false

# Font Awesome
gem 'font-awesome-sass', '~> 5.12.0'
# Pagination
gem 'will_paginate', '~> 3.1.1'
# Images
gem 'mini_magick'
# gem 'cloudinary', '~> 1.12.0'
# Dot Env
gem 'dotenv-rails', groups: [:development, :test]
# Simple Form
gem 'simple_form'
# Fake emails in development
gem 'letter_opener', group: :development
# Friendly URLs
gem 'friendly_id', '~> 5.2.4'
# Devise
gem 'devise'
# Bootstrap
gem 'bootstrap', '~> 4.4.1'
# Jquery for Bootstrap
gem 'jquery-rails'
# Sendgrid for email
gem 'sendgrid-ruby'
# Pundit for authentication
gem 'pundit'
# Factroy Bot for testing
group :development, :test do
  gem 'factory_bot_rails'
  gem 'rspec-rails'
end
# clearning test db before testing
group :test do
  gem 'database_cleaner-active_record'
end

# END TAAALK ADDITIONS

# Use postgresql
gem 'pg'
# Use Puma as the app server
gem "puma", ">= 4.3.3"
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Use development version of Webpacker
gem 'webpacker', github: "rails/webpacker"

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', github: 'rails/web-console'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
