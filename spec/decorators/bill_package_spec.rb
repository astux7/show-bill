require 'spec_helper'

describe 'Package decorator' do
  let(:decor) { Decorator::BillPackage.new(data) }
  let(:data) { 
    {
      "package" => {
      "subscriptions" => [
        { "type" => "tv", "name" => "Variety with Movies HD", "cost" => 50.00 },
        { "type" => "talk", "name" => "Sky Talk Anytime", "cost" => 5.00 },
        { "type" => "broadband", "name" => "Fibre Unlimited", "cost" => 16.40 }
      ],
      "total" => 71.40
      }
    }
  }

  it 'returns total' do
    expect(decor.total).to eq(71.4)
  end

  it 'returns first package type' do
    expect(decor.subscriptions.first.type).to eq("tv")
  end

  it 'returns first package name' do
    expect(decor.subscriptions.first.name).to eq("Variety with Movies HD")
  end

  it 'returns first package cost' do
    expect(decor.subscriptions.first.cost).to eq(50.00)
  end
end