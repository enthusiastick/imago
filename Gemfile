source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use postgresql as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'


# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem 'simple_form'
gem 'devise'
gem 'foundation-rails'
gem 'carrierwave'
gem 'fog', '~> 1.3.1'

group :test, :development do
  gem 'rspec-rails'
  gem 'pry-rails'
  gem 'shoulda-matchers'
  gem 'valid_attribute'
  gem 'factory_girl_rails'
  gem 'launchy'
  gem 'capybara'
  gem 'dotenv-rails'
  gem 'email_spec'
end

group :development do
  gem 'meta_request'
  gem 'binding_of_caller'
  gem 'better_errors'
  gem 'quiet_assets'
  gem 'mailcatcher'
end

group :staging, :production do
  gem 'rails_12factor'
end

ruby "2.0.0"
