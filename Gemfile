source 'https://rubygems.org'
ruby '2.1.2'

gem 'bootstrap-sass'
gem 'coffee-rails'
gem 'rails', '4.1.1'
gem 'haml-rails'
gem 'sass-rails'
gem 'uglifier'
gem 'jquery-rails'
gem 'pg'
gem 'bootstrap_form'
gem 'bcrypt'

group :development do
  gem 'thin'
  gem "better_errors"
  gem "binding_of_caller"
  gem "growl"  
end

group :development, :test do
  gem 'pry'
  gem 'pry-nav'
  gem 'rspec-rails', '~> 3.0'
  gem "guard-rspec"  
  gem 'fuubar'
  #gem 'minitest' 
  #gem 'shoulda-matchers', '~> 2.8.0'
end

group :test do
  gem 'shoulda-matchers', require: false

  gem 'database_cleaner'


end

group :development do
  gem 'guard-livereload', '~> 2.4', require: false

  gem "rack-livereload"
end

group :production do
  gem 'rails_12factor'
end



