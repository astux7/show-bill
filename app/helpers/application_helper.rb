helpers do
  def format_date(date)
    date.split('-').reverse.join('/')
  end

  def currency_sign
    "£"
  end
end