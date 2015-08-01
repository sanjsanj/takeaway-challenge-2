require_relative 'menu'

class Lineitem
  attr_reader :dish_name, :dish_qty, :dish_price, :line_total

  def initialize dish, qty = 1
    @dish_name = dish[:name]
    @dish_price = dish[:price]
    @dish_qty = qty
    @line_total = dish_price * dish_qty
  end
end
