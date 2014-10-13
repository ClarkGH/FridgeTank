class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :prep_time
      t.string :total_time
      t.string :directions
      t.string :category

      t.belongs_to :users
      t.timestamps
    end
  end
end
