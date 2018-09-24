class Ingredient
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end

  def allergen
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end #end allergen

end
