require 'open-uri'

get '/' do
  @title = 'Sky Bill'
  process_data

  erb :index
end

private

def process_data
  set_data(get_data)
end

def set_data(data)
  @bill_statement = Decorator::BillStatement.new(data)
  @bill_package = Decorator::BillPackage.new(data)
  @bill_calls = Decorator::BillCall.new(data)
  @bill_store = Decorator::BillStore.new(data)
end

def get_data
  data = open(bill_url).read
  JSON.parse(data)
end

def bill_url
  "http://safe-plains-5453.herokuapp.com/bill.json"
  
end
