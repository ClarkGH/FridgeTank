class CreateGroceryLists < ActiveRecord::Migration
  def change
    create_table :grocery_lists do |t|
      t.string :name

      t.belongs_to :user
      t.timestamps
    end
  end
end
