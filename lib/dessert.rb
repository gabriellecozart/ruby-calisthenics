class Dessert
  attr_accessor :name, :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    @calories < 200
  end
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    @calories = 5
    @name = "#{flavor} jelly bean"
    @flavor = flavor
  end
  
  def delicious?
    return true unless @flavor == 'licorice'
  end
end