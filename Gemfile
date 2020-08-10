source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3', '~> 1.4'

gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers', '~>4.4.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Use Active Model has_secure_password
# bundle install
gem 'bcrypt', '~> 3.1.7'
gem 'i18n-js'
gem 'will_paginate', '>= 3.0'
gem 'pagy', '~> 3.5'
gem 'kaminari'       # gíup phân trang
gem 'ransack'     #tạo form tìm kiếm
gem 'bootstrap-kaminari-views' # giao diện đẹp cho phân trang
gem "dotenv-rails"
gem "figaro"

# https://viblo.asia/p/phan-trang-trong-rails-su-dung-gem-kaminari-va-tao-select-limit-load-voi-gem-ransack-lA7GKwOYGKZQ
# caif bootstrap cho phan trang
gem 'bootstrap', '~> 4.5.0'
# Bootstrap JavaScript phụ thuộc vào jQuery. Nếu bạn đang sử dụng Rails 5.1+, hãy thêm jquery-railsđá quý vào Gemfile của bạn:
gem 'jquery-rails'
#permission
gem "cancancan"

gem 'config'
# rails g config:install
gem "simple_form"
# rails generate simple_form:install

gem "figaro"
# bundle exec figaro install :https://github.com/laserlemon/figaro