class Ingredient < ActiveRecord::Base
	
	has_many :grocery_list_ingredients
	has_many :grocery_lists, through: :grocery_list_ingredients
	
	has_many :recipe_ingredients
	has_many :recipes, through: :recipe_ingredients

end
