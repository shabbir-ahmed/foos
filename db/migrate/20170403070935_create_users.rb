class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :email
      t.string :image
      t.string :password_digest
      t.string :headline
      t.string :summery
      t.string :position
      t.date :dob
      t.string :provider
      t.string :uid
      t.string :nationality
      t.string :religion
      t.string :gender
      t.string :phone
      t.string :address
      t.string :fb_url
      t.string :twitter_url
      t.string :linkedin_url
      t.datetime :last_logdate
      t.string :password_reset_token
      t.string :account_activation_key
      t.datetime :oauth_expires_at
      t.string :oauth_token
      t.string :activation_digest
      t.datetime :activeted_at
      t.integer :activated
      t.string :reset_digest
      t.datetime :reset_sent_at

      t.timestamps
    end
  end
end
