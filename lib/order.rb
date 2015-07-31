require_relative 'lineitem'

class Order
  attr_reader :line_array

  def initialize *line_items
    @line_array = []
    line_items.each { |lineitem| @line_array << lineitem }
  end

  def total
  @line_array.inject(0) { |sum, lineitem| sum + lineitem.line_total }
  end
end
