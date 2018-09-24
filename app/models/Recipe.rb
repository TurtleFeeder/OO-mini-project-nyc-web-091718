class Recipe
  attr_reader :name
  @@all =[]

  def self.all
    @@all
  end

  def self.most_popular
    recipes_sorted = self.all.sort_by {|recipe| recipe.recipe_cards.length}
    recipes_sorted[-1]
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def recipe_cards
    RecipeCard.all.select do |rc|
       rc.recipe == self
     end
  end

  def recipe_ingredients
    RecipeIngredient.all.select do |ri|
       ri.recipe == self
     end
  end

  def users
    self.recipe_cards.map do |rc|
      rc.user
    end
  end

  def ingredients
    self.recipe_ingredients.map do |ri|
      ri.ingredient
    end
  end

  def allergens
    self.ingredients.map {|ingredient| ingredient.allergen}.flatten
  end

  def add_ingredients(array)
    array.map do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end
  end

end #end Recipe class
