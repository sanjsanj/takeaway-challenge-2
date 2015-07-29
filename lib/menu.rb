class Menu
  attr_reader :dishes
  DISHES = [{ name: "Fish", price: 4.00 },
            { name: "Chips", price: 3.00 },
            { name: "Cola", price: 2.00 }]

  def initialize dishes = DISHES
    @dishes = dishes
  end
end
