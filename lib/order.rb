require_relative 'lineitem'

class Order
  attr_reader :line_items_array

  def initialize *line_items
    @line_items_array = []
    line_items.each { |lineitem| line_items_array << lineitem }
  end

  def total
  line_items_array.inject(0) { |sum, lineitem| sum + lineitem.line_total }
  end
end
