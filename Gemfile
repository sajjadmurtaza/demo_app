# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.0.alpha2'

gem 'importmap-rails', '>= 0.3.4'
gem 'jbuilder', '~> 2.7'
gem 'puma', '~> 5.0'
gem 'sqlite3', '~> 1.4'
gem 'stimulus-rails', '>= 0.4.0'
gem 'turbo-rails', '>= 0.7.11'

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'debug', '>= 1.0.0', platforms: %i[mri mingw x64_mingw]
  gem 'rubocop', require: false
end

group :development do
  gem 'letter_opener'
  gem 'web-console', '>= 4.1.0'
end
