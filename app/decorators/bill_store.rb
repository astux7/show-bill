class Decorator::BillStore < Decorator::Base
  attr_reader :run, :total, :store, :title, :cost, :type

  Struct.new("SkyStore", :title, :cost, :type)
  
  def initialize(data)
    @run = true

    prepare_view_data(
      { 
        total: total_amount(data),
        store: store_charges(data),
      }
    )
  end

private

  def total_amount(data)
    data["skyStore"]["total"]
  end

  def store_charges(data)
    rentals(data) + buy_and_keep(data)
  end

  def rentals(data)
    data["skyStore"]["rentals"].map { |unit|
      Struct::SkyStore.new(unit["title"], unit["cost"], "Rentals")
    }
  end

  def buy_and_keep(data)
    data["skyStore"]["buyAndKeep"].map { |unit|
      Struct::SkyStore.new(unit["title"], unit["cost"], "Buy and Keep")
    }
  end
end