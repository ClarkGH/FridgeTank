class GroceryListIngredient < ActiveRecord::Base
	
	belongs_to :grocery_list
	belongs_to :ingredient

end