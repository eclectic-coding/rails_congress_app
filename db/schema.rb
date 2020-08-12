# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_12_173621) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "follow_lists", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "member_id"
    t.text "mem_id"
    t.text "full_name"
    t.text "state"
    t.text "party"
    t.string "chamber"
    t.string "short_title"
    t.string "last_name"
    t.index ["member_id"], name: "index_follow_lists_on_member_id"
    t.index ["user_id"], name: "index_follow_lists_on_user_id"
  end

  create_table "representatives", force: :cascade do |t|
    t.string "chamber"
    t.string "member_id"
    t.string "title"
    t.string "short_title"
    t.string "first_name"
    t.string "last_name"
    t.string "date_of_birth"
    t.string "gender"
    t.string "party"
    t.string "party_full_name"
    t.integer "age"
    t.string "twitter_account"
    t.string "facebook_account"
    t.string "youtube_account"
    t.string "website"
    t.string "contact_form"
    t.integer "seniority"
    t.string "next_election"
    t.string "office"
    t.string "phone"
    t.string "phone_clickable"
    t.string "state"
    t.string "district"
    t.decimal "missed_votes_pct"
    t.decimal "votes_with_party_pct"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "senates", force: :cascade do |t|
    t.string "chamber"
    t.string "member_id"
    t.string "title"
    t.string "short_title"
    t.string "first_name"
    t.string "last_name"
    t.string "date_of_birth"
    t.string "gender"
    t.string "party"
    t.string "party_full_name"
    t.integer "age"
    t.string "twitter_account"
    t.string "facebook_account"
    t.string "youtube_account"
    t.string "website"
    t.string "contact_form"
    t.integer "seniority"
    t.string "next_election"
    t.string "office"
    t.string "phone"
    t.string "phone_clickable"
    t.string "state"
    t.string "district"
    t.decimal "missed_votes_pct"
    t.decimal "votes_with_party_pct"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
