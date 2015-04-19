require 'sinatra'
require 'sinatra/partial'

require_relative 'controllers/application'
require_relative 'controllers/bill'

require_relative 'helpers/application_helper'

require_relative 'decorators/base'
require_relative 'decorators/bill_statement'
require_relative 'decorators/bill_package'
require_relative 'decorators/bill_call'
require_relative 'decorators/bill_store'

set :partial_template_engine, :erb
set :public_folder, 'public'