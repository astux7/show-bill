require 'sinatra'
require 'sinatra/partial'

require_relative 'controllers/application'

set :partial_template_engine, :erb
set :public_folder, 'public'