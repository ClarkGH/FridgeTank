class GroceryList < ActiveRecord::Base
	
	has_many :grocery_list_ingredients, :dependent => :destroy
	has_many :ingredients, through: :grocery_list_ingredients

	belongs_to :user
	
end