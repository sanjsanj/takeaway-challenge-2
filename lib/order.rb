require 'lineitem'

class Order
  def initialize
    @lineitem = {}
  end

  def add dish, qty = 1
    Menu.new.dishes.keys.include? dish ? @lineitem << Menu.new.dishes[dish] : true
  end

  def view
    @lineitem
  end
end
