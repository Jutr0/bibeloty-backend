source "https://rubygems.org"

ruby "3.2.2"

gem "rails", "~> 7.0.8", ">= 7.0.8.4"
gem 'pg'
gem "puma", "~> 5.0"
gem "jbuilder"
gem 'doorkeeper'
gem "bcrypt", "~> 3.1.7"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "image_processing", "~> 1.2"
gem "rack-cors"
gem "database_cleaner"
gem 'cancancan'
gem 'rubocop', require: false
gem 'rubocop-performance'
gem 'annotate'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :test do
  gem 'rspec'
  gem 'rspec_junit_formatter'
  gem 'rspec-rails', '~> 4.0.1'
  gem 'database_cleaner-active_record'
end

group :development do
  gem 'listen', '3.8.0'
  gem "spring"
  gem 'spring-watcher-listen', '2.1.0'
end

