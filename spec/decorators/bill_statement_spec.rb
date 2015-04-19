require 'spec_helper'

describe 'Statement decorator' do
  let(:decor) { Decorator::BillStatement.new(data) }
  let(:data) { 
    {
      "statement" => {
        "generated" => "2015-01-11",
        "due" => "2015-01-25",
        "period" => {
          "from" => "2015-01-26",
          "to" => "2015-02-25",
        }
      },
      "total" => 136.03
    } 
  }

  it 'returns total' do
    expect(decor.total).to eq(136.03)
  end

  it 'returns due date' do
    expect(decor.due).to eq("2015-01-25")
  end

  it 'returns period' do
    expect(decor.period).to eq("26/01/2015 - 25/02/2015")
  end

  it 'returns generated' do
    expect(decor.generated).to eq("2015-01-11")
  end
end