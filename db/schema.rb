ActiveRecord::Schema.define(version: 20160607222147) do

  enable_extension "plpgsql"

  create_table "agency_themes", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "brand_logo_file_name"
    t.string   "brand_logo_content_type"
    t.integer  "brand_logo_file_size"
    t.datetime "brand_logo_updated_at"
    t.string   "intro_lead_in",           default: "Welcome To Our Studio!"
    t.string   "intro_heading",           default: "It's Nice To Meet You"
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
  end

  add_index "agency_themes", ["user_id"], name: "index_agency_themes_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "agency_themes", "users"
end
