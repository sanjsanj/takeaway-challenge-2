require 'menu'

class Lineitem
  def initialize dish, qty = 1
    @dish = dish
    @qty = qty
    @line_total = 0
  end
end
