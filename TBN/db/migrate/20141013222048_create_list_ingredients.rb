class CreateListIngredients < ActiveRecord::Migration
  def change
    create_table :list_ingredients do |t|
    	t.belongs_to :lists
    	t.belongs_to :ingredients
    	t.timestamps
    end
  end
end
