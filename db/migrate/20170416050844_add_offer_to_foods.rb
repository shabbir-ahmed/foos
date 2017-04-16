class AddOfferToFoods < ActiveRecord::Migration[5.0]
  def change
    add_column :foods, :offer_percent, :integer
    add_column :foods, :offer_occasions, :string
  end
end
