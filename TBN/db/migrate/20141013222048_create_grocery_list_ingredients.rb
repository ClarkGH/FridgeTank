class CreateGroceryListIngredients < ActiveRecord::Migration
  def change
    create_table :grocery_list_ingredients do |t|
    	t.belongs_to :grocery_list
    	t.belongs_to :ingredient
    	t.timestamps
    end
  end
end
