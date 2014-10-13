class Ingredient < ActiveRecord::Base
	
	has_many :list_ingredients
	has_many :lists, through: :list_ingredients
	
	has_many :recipe_ingredients
	has_many :recipes, through: :recipe_ingredients

end
