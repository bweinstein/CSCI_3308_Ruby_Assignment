class Dessert
  
  attr_accessor :name, :calories

  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  
  def healthy?
    @calories < 200
  end
  
  def name(name)
    @name = name
  end
  
  def name
    return @name
  end

  def delicious?
    return true
  end
end

class JellyBean < Dessert
  
  attr_accessor :flavor

  def initialize(name, calories, flavor)
    @name = name
    @calories = calories
    @flavor = flavor
  end
  
  def delicious?
    if @flavor == "black licorice"
      return false
    else
      return true
    end
  end

end

regular_dessert = Dessert.new("Regular", 700)
regular_dessert2 = Dessert.new("Normal", 400)
Jelly_test = JellyBean.new("Jellybeans", 100, "red licorice")
Jelly_test2 = JellyBean.new("Jellybeans", 100, "black licorice")

if (regular_dessert.name != "Regular")
  puts "setter doesnt work"
elsif (regular_dessert2.healthy?)
  puts "healthy doesn't work. go on a diet"
elsif (Jelly_test2.delicious?)
  puts "delicious meter doesn't work"
else 
  puts "All tests passed!"
end
