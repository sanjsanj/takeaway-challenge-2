require_relative 'lineitem'

class Order
  attr_reader :order_array

  def initialize *line_items
    @order_array = []
    line_items.each do |arg|
      @order_array << arg
    end
  end

  def total
    to_return = 0
    @order_array.each do |order|
      to_return += order.line_total
    end
    to_return
  end
end
