class CreateGroceryListIngredients < ActiveRecord::Migration
  def change
    create_table :grocery_list_ingredients do |t|
    	t.belongs_to :grocery_lists
    	t.belongs_to :ingredients
    	t.timestamps
    end
  end
end
