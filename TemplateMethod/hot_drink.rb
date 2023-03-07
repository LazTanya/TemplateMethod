class HotDrink
  def prepare
    boil_water
    pour_in_cup
    add_sugar_and_milk
    puts "Your #{drink_type} is ready!"
  end

  def boil_water
    puts "Boiling water..."
  end

  def pour_in_cup
    puts "Pouring into cup..."
  end

  def add_sugar_and_milk
    raise NotImplementedError, "Subclass must implement this method"
  end
end

class Coffee < HotDrink
  def drink_type
    "coffee"
  end

  def add_sugar_and_milk
    puts "Adding sugar and milk to coffee..."
  end
end

class Tea < HotDrink
  def drink_type
    "tea"
  end

  def add_sugar_and_milk
    puts "Adding sugar and lemon to tea..."
  end
end

coffee = Coffee.new
coffee.prepare

tea = Tea.new
tea.prepare
