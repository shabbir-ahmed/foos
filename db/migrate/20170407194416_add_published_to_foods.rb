class AddPublishedToFoods < ActiveRecord::Migration[5.0]
  def change
    add_column :foods, :published, :boolean, default: false
  end
end
