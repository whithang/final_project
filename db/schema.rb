# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151106102353) do

  create_table "atmospheres", force: :cascade do |t|
    t.string "name"
  end

  create_table "attribute_categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "attribute_sub_categories", force: :cascade do |t|
    t.string  "name"
    t.integer "geek_level"
  end

  create_table "authorizations", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "token"
  end

  create_table "event_list", force: :cascade do |t|
    t.string   "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "winery_id"
  end

  add_index "event_list", ["winery_id"], name: "index_event_lists_on_winery_id"

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "memories", force: :cascade do |t|
    t.string   "name"
    t.date     "trip_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
    t.date     "trip_date_end"
  end

  add_index "memories", ["user_id"], name: "index_memories_on_user_id"

  create_table "memory_details", force: :cascade do |t|
    t.string   "notes"
    t.boolean  "visited"
    t.date     "visited_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "winery_id"
    t.integer  "memory_id"
    t.time     "visit_time"
    t.boolean  "reservation"
  end

  add_index "memory_details", ["memory_id"], name: "index_memory_details_on_memory_id"
  add_index "memory_details", ["winery_id"], name: "index_memory_details_on_winery_id"

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "bio"
    t.date     "birth_date"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id"

  create_table "reviews", force: :cascade do |t|
    t.text     "comment"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "winery_id"
    t.string   "photo"
  end

  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"
  add_index "reviews", ["winery_id"], name: "index_reviews_on_winery_id"

  create_table "tasting_attributes", force: :cascade do |t|
    t.string  "name"
    t.text    "bio"
    t.integer "attribute_category_id"
    t.integer "attribute_sub_category_id"
    t.integer "wine_type_id"
  end

  add_index "tasting_attributes", ["attribute_category_id"], name: "index_tasting_attributes_on_attribute_category_id"
  add_index "tasting_attributes", ["attribute_sub_category_id"], name: "index_tasting_attributes_on_attribute_sub_category_id"
  add_index "tasting_attributes", ["wine_type_id"], name: "index_tasting_attributes_on_wine_type_id"

  create_table "tasting_menus", force: :cascade do |t|
    t.date    "menu_start_date"
    t.integer "wine_id"
  end

  add_index "tasting_menus", ["wine_id"], name: "index_tasting_menus_on_wine_id"

  create_table "tasting_notes", force: :cascade do |t|
    t.date    "tasting_date"
    t.text    "notes"
    t.boolean "purchased"
    t.integer "wine_id"
    t.integer "user_id"
  end

  add_index "tasting_notes", ["user_id"], name: "index_tasting_notes_on_user_id"
  add_index "tasting_notes", ["wine_id"], name: "index_tasting_notes_on_wine_id"

  create_table "tour_list", force: :cascade do |t|
    t.string  "description"
    t.integer "winery_id"
  end

  add_index "tour_list", ["winery_id"], name: "index_tours_list_on_winery_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "varietals", force: :cascade do |t|
    t.string  "name"
    t.text    "bio"
    t.integer "wine_type_id"
  end

  add_index "varietals", ["wine_type_id"], name: "index_varietals_on_wine_type_id"

  create_table "varietals_wineries", id: false, force: :cascade do |t|
    t.integer "varietal_id", null: false
    t.integer "winery_id",   null: false
  end

  add_index "varietals_wineries", ["varietal_id", "winery_id"], name: "index_varietals_wineries_on_varietal_id_and_winery_id"
  add_index "varietals_wineries", ["winery_id", "varietal_id"], name: "index_varietals_wineries_on_winery_id_and_varietal_id"

  create_table "varietals_wines", id: false, force: :cascade do |t|
    t.integer "wine_id",     null: false
    t.integer "varietal_id", null: false
    t.float   "percentage"
  end

  add_index "varietals_wines", ["varietal_id", "wine_id"], name: "index_varietals_wines_on_varietal_id_and_wine_id"
  add_index "varietals_wines", ["wine_id", "varietal_id"], name: "index_varietals_wines_on_wine_id_and_varietal_id"

  create_table "wine_types", force: :cascade do |t|
    t.string "name"
  end

  create_table "wineries", force: :cascade do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.string   "phone"
    t.string   "email"
    t.boolean  "appointment"
    t.boolean  "pets"
    t.boolean  "picnic"
    t.float    "fee"
    t.time     "open"
    t.time     "close"
    t.string   "website"
    t.string   "appointment_url"
    t.boolean  "food"
    t.boolean  "tour"
    t.boolean  "family"
    t.string   "logo"
    t.string   "club"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "instagram"
    t.string   "pinterest"
    t.integer  "atmosphere_id"
    t.integer  "winery_size"
    t.integer  "party_scale"
    t.decimal  "lat",             precision: 10, scale: 6
    t.decimal  "lng",             precision: 10, scale: 6
    t.boolean  "public",                                   default: false
    t.boolean  "adults",                                   default: false
    t.boolean  "historic",                                 default: false
    t.boolean  "modern",                                   default: false
    t.boolean  "eccentric",                                default: false
    t.string   "slug"
  end

  add_index "wineries", ["atmosphere_id"], name: "index_wineries_on_atmosphere_id"

  create_table "winery_images", force: :cascade do |t|
    t.string  "photo"
    t.integer "winery_id"
  end

  add_index "winery_images", ["winery_id"], name: "index_winery_images_on_winery_id"

  create_table "winery_varietals", id: false, force: :cascade do |t|
    t.integer "winery_id",   null: false
    t.integer "varietal_id", null: false
  end

  create_table "wines", force: :cascade do |t|
    t.string  "name"
    t.integer "year"
    t.string  "region"
    t.text    "bio"
    t.float   "price"
    t.float   "club_price"
    t.string  "photo"
    t.integer "winery_id"
  end

  add_index "wines", ["winery_id"], name: "index_wines_on_winery_id"

end
