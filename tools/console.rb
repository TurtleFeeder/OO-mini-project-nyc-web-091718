require_relative '../config/environment.rb'

r1 = Recipe.new("apple pie")
r2 = Recipe.new("cake")
r3 = Recipe.new("tart")
r4 = Recipe.new("cheesecake")

u1 = User.new("Bob")
u2 = User.new("Pat")
u3 = User.new("Chad")
u4 = User.new("Anne")

i1 = Ingredient.new("Flour")
i2 = Ingredient.new("Sugar")
i3 = Ingredient.new("Apple")
i4 = Ingredient.new("Cheese")

a1 = Allergen.new(u4, i1)
a2 = Allergen.new(u3, i4)
a3 = Allergen.new(u4, i4)
a4 = Allergen.new(u2, i4)

ri1 = RecipeIngredient.new(r1, i1)
ri2 = RecipeIngredient.new(r1, i3)
ri3 = RecipeIngredient.new(r2, i4)
ri4 = RecipeIngredient.new(r3, i2)

rc1 = RecipeCard.new(u1, r1, "date1", 5)
rc2 = RecipeCard.new(u2, r1, "date2", 6)
rc3 = RecipeCard.new(u3, r2, "date3", 3)
rc4 = RecipeCard.new(u3, r3, "date4", 10)
rc5 = RecipeCard.new(u1, r2, "date5", 5)
rc6 = RecipeCard.new(u2, r2, "date6", 6)
rc7 = RecipeCard.new(u3, r2, "date7", 3)
rc8 = RecipeCard.new(u3, r4, "date8", 10)

binding.pry
