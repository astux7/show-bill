require 'spec_helper'

describe 'Call decorator' do
  let(:decor) { Decorator::BillCall.new(data) }
  let(:data) { 
    {
      "callCharges" => {
        "calls" => [
          { "called" => "07716393769", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "07716393769", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "07716393769", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "07716393769", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "07716393769", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "07716393769", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "07716393769", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "07716393769", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "07716393769", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "07716393769", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "07716393769", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "07716393769", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "07716393769", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "07716393769", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "07716393769", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "07716393769", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "07716393769", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "07716393769", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "02074351359", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "02074351359", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "02074351359", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "02074351359", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "02074351359", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "02074351359", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "02074351359", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "02074351359", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "02074351359", "duration" => "00:23:03", "cost" => 2.13 },
          { "called" => "02074351359", "duration" => "00:23:03", "cost" => 2.13 },
        ],
        "total" => 59.64
      }
    }
  }

  it 'returns total' do
    expect(decor.total).to eq(59.64)
  end

  it 'returns first called number' do
    expect(decor.calls.first.called).to eq("07716393769")
  end

  it 'returns first called duration' do
    expect(decor.calls.first.duration).to eq("00:23:03")
  end

  it 'returns first called cost' do
    expect(decor.calls.first.cost).to eq(2.13)
  end
end