module Helpers
  def format_date(date)
    date.split('-').reverse.join('/')
  end

  def currency_sign
    "£"
  end
end

helpers do
  include Helpers
end