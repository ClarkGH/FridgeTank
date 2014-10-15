class GroceryListIngredients < ActiveRecord::Base
	
	has_many :grocery_lists
	has_many :ingredients

end