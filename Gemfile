source 'https://rubygems.org'
ruby "2.3.0"

gem 'rails', '4.2.5'
gem 'pg', '~> 0.15'

# Build JSON APIs
gem 'rails-api'

# For querying the test profiles
gem 'ransack'

# Gems for running on Heroku
gem 'puma'
gem "rack-timeout"
gem 'rails_12factor', group: :production

group :development, :test do
  gem 'byebug'
  gem "factory_girl_rails", "~> 4.0"
  gem 'rspec-rails', '~> 3.0'
end

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

