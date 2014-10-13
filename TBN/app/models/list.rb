class List < ActiveRecord::Base
	
	has_many :list_ingredients
	has_many :ingredients through: :list_ingredients

	belongs_to :user
	
end