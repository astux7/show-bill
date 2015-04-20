class Decorator::BillCall < Decorator::Base
  attr_reader :run, :calls, :total, :duration, :called, :cost
  Struct.new("CallCharges", :called, :cost, :duration)
  
  def initialize(data)
    @run = true

    prepare_view_data(
      { 
        total: total_amount(data),
        calls: call_service(data)
      }
    )
  end

private

  def total_amount(data)
    data["callCharges"]["total"]
  end

  def call_service(data)
    data["callCharges"]["calls"].map { |unit|
      Struct::CallCharges.new(unit["called"], unit["cost"], unit["duration"])
    }
  end
end