ActiveRecord::Schema.define(version: 2021_08_03_134950) do

  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer "order_id"
    t.string "description"
    t.index ["order_id"], name: "index_comments_on_order_id", using: :hash
  end

  create_table "orders", force: :cascade do |t|
    t.integer "department_id"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["description"], name: "index_orders_on_description"
  end

end
