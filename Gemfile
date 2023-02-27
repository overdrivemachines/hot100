source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.4", ">= 7.0.4.2"
gem "sprockets-rails"
gem "pg", "1.4.2"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "sassc-rails"
gem "image_processing", "~> 1.2"
gem "bootstrap", "~> 5.2.0"
gem "devise"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
  gem "rails-erd" # ERD diagram
  gem "annotate" # Annotate models and routes
  gem "chusaku", require: false # Annotate controllers
  gem "faker" # Fake sample data
  gem "letter_opener" # Preview emails
  gem "erb-formatter" # Format ERB files
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"

  # New
  gem "rails-controller-testing"
  gem "minitest"
  gem "minitest-reporters"
  gem "guard"
  gem "guard-minitest"
end
