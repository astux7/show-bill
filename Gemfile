# bundle init  - creates gemfile
# A sample Gemfile
source "https://rubygems.org"

#ruby '2.0.0-p247'
gem 'sinatra' # our web framework
gem 'sinatra-reloader'
gem 'shotgun' # for live code reloading
gem 'sinatra-partial'  #for split erb files to parts
gem 'json' # to_json needed
gem 'nokogiri', '1.3.3' 
group :development, :test do
  gem "rspec"  #testing server side
  gem 'capybara'
  gem 'cucumber' #testing client side
  gem "poltergeist"
  gem "chromedriver-helper"
  gem "selenium-webdriver"
end