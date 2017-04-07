class AddSomeToFoods < ActiveRecord::Migration[5.0]
  def change
    add_column :foods, :food_type, :string
    add_column :foods, :restaurant, :string
    add_column :foods, :restaurant_web, :string
  end
end
