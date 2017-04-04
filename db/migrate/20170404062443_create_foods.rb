class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :title
      t.text :description
      t.string :cost
      t.string :location
      t.text :directions
      t.string :nutrition
      t.string :calorie
      t.string :image1
      t.string :image2
      t.string :image3
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
