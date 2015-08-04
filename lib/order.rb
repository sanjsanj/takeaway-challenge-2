require_relative 'lineitem'

class Order
  attr_reader :line_items

  def initialize *line_items
    @line_items = line_items
  end

  def total
    line_items.inject(0) { |sum, lineitem| sum + lineitem.total }
  end
end
