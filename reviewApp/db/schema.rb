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

ActiveRecord::Schema.define(version: 2019_04_22_152614) do

  create_table "phone_reviews", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "author"
    t.float "rating"
    t.text "content"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "products_id"
    t.bigint "profile_id"
    t.index ["products_id"], name: "index_phone_reviews_on_products_id"
    t.index ["profile_id"], name: "index_phone_reviews_on_profile_id"
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "productName"
    t.string "brand"
    t.float "avgCost"
    t.string "category"
    t.date "releaseDate"
    t.text "description"
    t.string "productimg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "prodimg_file_name"
    t.string "prodimg_content_type"
    t.integer "prodimg_file_size"
    t.datetime "prodimg_updated_at"
  end

  create_table "profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "pname"
    t.date "dob"
    t.string "address"
    t.string "city"
    t.string "country"
    t.string "userimg_file_name"
    t.string "userimg_content_type"
    t.integer "userimg_file_size"
    t.datetime "userimg_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "reviews", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "author"
    t.integer "rating"
    t.text "content"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tv_reviews", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "author"
    t.float "rating"
    t.text "content"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "products_id"
    t.index ["products_id"], name: "index_tv_reviews_on_products_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "userid"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "watch_reviews", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "author"
    t.float "rating"
    t.text "content"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "products_id"
    t.index ["products_id"], name: "index_watch_reviews_on_products_id"
  end

  add_foreign_key "phone_reviews", "products", column: "products_id"
  add_foreign_key "tv_reviews", "products", column: "products_id"
  add_foreign_key "watch_reviews", "products", column: "products_id"
end
