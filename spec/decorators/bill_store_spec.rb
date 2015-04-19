require 'spec_helper'

describe 'Store decorator' do
  let(:decor) { Decorator::BillStore.new(data) }
  let(:data) { 
    {
    "skyStore" => {
      "rentals" => [
        { "title" => "50 Shades of Grey", "cost" => 4.99 }
      ],
      "buyAndKeep" => [
        { "title" => "That's what she said", "cost" => 9.99 },
        { "title" => "Broke back mountain", "cost" => 9.99 }
      ],
      "total" => 24.97
      }
    }
  }

  it 'returns total' do
    expect(decor.total).to eq(24.97)
  end

  it 'returns first store item title' do
    expect(decor.store.first.title).to eq("50 Shades of Grey")
  end

  it 'returns first store item type' do
    expect(decor.store.first.type).to eq("Rentals")
  end

  it 'returns first store item cost' do
    expect(decor.store.first.cost).to eq(4.99)
  end
end