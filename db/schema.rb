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

ActiveRecord::Schema.define(version: 20160623185004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agencies", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "brand_logo_file_name"
    t.string   "brand_logo_content_type"
    t.integer  "brand_logo_file_size"
    t.datetime "brand_logo_updated_at"
    t.string   "header_image_file_name"
    t.string   "header_image_content_type"
    t.integer  "header_image_file_size"
    t.datetime "header_image_updated_at"
    t.string   "intro_lead_in",                          default: "Welcome To Our Studio!"
    t.string   "intro_heading",                          default: "It's Nice To Meet You"
    t.string   "services_subheading",                    default: "Check out our awesome services"
    t.string   "services_icon_1",                        default: "fa fa-shopping-cart"
    t.string   "services_icon_1_heading",                default: "E-Commerce"
    t.text     "services_icon_1_subheading",             default: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit."
    t.string   "services_icon_2",                        default: "fa fa-laptop"
    t.string   "services_icon_2_heading",                default: "Responsive Design"
    t.text     "services_icon_2_subheading",             default: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit."
    t.string   "services_icon_3",                        default: "fa fa-lock"
    t.string   "services_icon_3_heading",                default: "Web Security"
    t.text     "services_icon_3_subheading",             default: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit."
    t.string   "portfolio_subheading",                   default: "Check out our projects"
    t.string   "portfolio_project_1_image_file_name"
    t.string   "portfolio_project_1_image_content_type"
    t.integer  "portfolio_project_1_image_file_size"
    t.datetime "portfolio_project_1_image_updated_at"
    t.string   "portfolio_project_1_name",               default: "Round Icons"
    t.string   "portfolio_project_1_category",           default: "Graphic Design"
    t.text     "portfolio_project_1_description",        default: "Use this area to describe your project"
    t.string   "portfolio_project_1_date",               default: "July 2016"
    t.string   "portfolio_project_1_client",             default: "Alkami"
    t.string   "portfolio_project_2_image_file_name"
    t.string   "portfolio_project_2_image_content_type"
    t.integer  "portfolio_project_2_image_file_size"
    t.datetime "portfolio_project_2_image_updated_at"
    t.string   "portfolio_project_2_name",               default: "StartUp Frame-Work"
    t.string   "portfolio_project_2_category",           default: "Web Development"
    t.text     "portfolio_project_2_description",        default: "Use this area to describe your project"
    t.string   "portfolio_project_2_date",               default: "September 2015"
    t.string   "portfolio_project_2_client",             default: "Alkami"
    t.string   "portfolio_project_3_image_file_name"
    t.string   "portfolio_project_3_image_content_type"
    t.integer  "portfolio_project_3_image_file_size"
    t.datetime "portfolio_project_3_image_updated_at"
    t.string   "portfolio_project_3_name",               default: "TreeHouse"
    t.string   "portfolio_project_3_category",           default: "Cloud Platform"
    t.text     "portfolio_project_3_description",        default: "Use this area to describe your project"
    t.string   "portfolio_project_3_date",               default: "December 2015"
    t.string   "portfolio_project_3_client",             default: "Alkami"
    t.datetime "created_at",                                                                                                                                                                              null: false
    t.datetime "updated_at",                                                                                                                                                                              null: false
  end

  add_index "agencies", ["user_id"], name: "index_agencies_on_user_id", using: :btree

  create_table "social_icons", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "social_icons", ["user_id"], name: "index_social_icons_on_user_id", using: :btree

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
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "agencies", "users"
  add_foreign_key "social_icons", "users"
end
