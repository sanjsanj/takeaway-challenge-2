class Menu
  attr_reader :dishes
  DISHES = [{ name: "Fish", price: 4 },
            { name: "Chips", price: 3 },
            { name: "Cola", price: 2 }]

  def initialize dishes = DISHES
    @dishes = dishes
  end
end
