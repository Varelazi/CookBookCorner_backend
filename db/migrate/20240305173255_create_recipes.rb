class CreateRecipes < ActiveRecord::Migration[7.1]
  def change
    create_table :recipes do |t|
      t.integer :creator
      t.text :title
      t.text :recipe_picture
      t.text :cuisine_type
      t.text :instructions

      t.timestamps
    end
  end
end
