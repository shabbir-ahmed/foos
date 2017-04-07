# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170407194416) do

  create_table "foods", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "cost"
    t.string   "location"
    t.text     "directions"
    t.string   "nutrition"
    t.string   "calorie"
    t.string   "image1"
    t.string   "image2"
    t.string   "image3"
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "food_type"
    t.string   "restaurant"
    t.string   "restaurant_web"
    t.boolean  "published",      default: false
    t.index ["user_id"], name: "index_foods_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "full_name"
    t.string   "email"
    t.string   "image"
    t.string   "password_digest"
    t.string   "headline"
    t.string   "summery"
    t.string   "position"
    t.date     "dob"
    t.string   "provider"
    t.string   "uid"
    t.string   "nationality"
    t.string   "religion"
    t.string   "gender"
    t.string   "phone"
    t.string   "address"
    t.string   "fb_url"
    t.string   "twitter_url"
    t.string   "linkedin_url"
    t.datetime "last_logdate"
    t.string   "password_reset_token"
    t.string   "account_activation_key"
    t.datetime "oauth_expires_at"
    t.string   "oauth_token"
    t.string   "activation_digest"
    t.datetime "activeted_at"
    t.integer  "activated"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
