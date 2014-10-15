class GroceryList < ActiveRecord::Base
	
	has_many :grocery_list_ingredients
	has_many :ingredients, through: :grocery_list_ingredients

	belongs_to :user
	
end