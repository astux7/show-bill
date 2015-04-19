require_relative 'base'

class Decorator::BillPackage < Decorator::Base
  attr_reader :run, :subscriptions, :total, :type, :name, :cost
  
  Struct.new("Subscriptions", :name, :cost, :type)
  
  def initialize(data)
    @run = true

    prepare_view_data(
      { 
        total: total_amount(data),
        subscriptions: package_service(data)
      }
    )
  end

private

  def total_amount(data)
    data["package"]["total"]
  end

  def package_service(data)
    data["package"]["subscriptions"].map { |unit|
      Struct::Subscriptions.new(unit["name"],unit["cost"],unit["type"])
    }
  end
end