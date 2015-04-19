require_relative 'base'

class Decorator::BillStatement < Decorator::Base
  attr_reader :run, :total, :due, :period, :generated

  def initialize(data)
    @run = true

    prepare_view_data(
      { 
        total: data["total"], 
        due: data["statement"]["due"],
        period: format_period(data),
        generated: data["statement"]["generated"]
      }
    )
  end

private

  def format_period(data, saparator = "-")
    [format_date(from), saparator, format_date(to)].join(' ')
  end

  def format_date(data)
    data.split('-').reverse.take(3).join('/')
  end

  def from
    data["statement"]["period"]["from"]
  end

  def to
    data["statement"]["period"]["to"]
  end
end