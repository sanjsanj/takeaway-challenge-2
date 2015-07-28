require 'menu'

class Lineitem
  attr_reader :dish, :qty, :price, :line_total

  def initialize dish, qty = 1
    @dish = dish
    @qty = qty
    @price = 1
    @line_total = 1
  end
end
