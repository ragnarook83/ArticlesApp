# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

# Web Server
gem 'bootsnap', '~> 1.11.1', require: false
gem 'foreman', '~> 0.87.2', require: false
gem 'puma', '~> 5.6.4'
gem 'whenever', require: false

# Rails
gem 'rails', '~> 7.0.3', '>= 7.0.3'
gem 'rails-i18n', '~> 7.0.3'

# Databases
gem 'kredis', '~> 1.2.0'
gem 'pg', '~> 1.3.5'
gem 'redis', '~> 4.6.0'

# Security
gem 'devise', '~> 4.8.1'
gem 'devise-encryptable', '~> 0.2.0'
gem 'pundit', '~> 2.2.0'

# Rails Engines

# Models
gem 'bcrypt', '~> 3.1.17'
gem 'friendly_id'
gem 'image_processing', '~> 1.12.2'

# Controllers

# Views
gem 'jbuilder', '~> 2.11.5'

# Assets
gem 'sprockets-rails', '~> 3.4.2'

# JavaScript
gem 'importmap-rails', '~> 1.0.3'
gem 'stimulus-rails', '~> 1.0.4'
gem 'turbo-rails', '~> 1.0.1'

# CSS/Sass
gem 'sassc-rails', '~> 2.1.2'

# Development and Testing specific gems
group :development, :test do
  gem 'brakeman', require: false
  gem 'debug', platforms: %i[mri mingw mswin x64_mingw]
  gem 'rails_best_practices', require: false
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw]
end

# Development specific gems
group :development do
  gem 'mina', '~> 1.2.4', require: false
  gem 'rack-mini-profiler', '~> 3.0.0'
  gem 'spring', '~> 4.0.0'
  gem 'web-console', '~> 4.2.0'
end

# Testing specific gems
group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
