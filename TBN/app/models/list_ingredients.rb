class ListIngredients < ActiveRecord::Base
	
	has_many :lists
	has_many :ingredients

end