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

ActiveRecord::Schema.define(version: 20160613182347) do

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
    t.string   "about_subheading",                       default: "Learn about us"
    t.string   "about_section_1_year",                   default: "2009-2011"
    t.string   "about_section_1_heading",                default: "Our Humble Beginnings"
    t.text     "about_section_1_body",                   default: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!"
    t.string   "about_section_1_image_file_name"
    t.string   "about_section_1_image_content_type"
    t.integer  "about_section_1_image_file_size"
    t.datetime "about_section_1_image_updated_at"
    t.string   "about_section_2_year",                   default: "March 2012"
    t.string   "about_section_2_heading",                default: "A Company Is Born"
    t.text     "about_section_2_body",                   default: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!"
    t.string   "about_section_2_image_file_name"
    t.string   "about_section_2_image_content_type"
    t.integer  "about_section_2_image_file_size"
    t.datetime "about_section_2_image_updated_at"
    t.string   "about_section_3_year",                   default: "January 2013"
    t.string   "about_section_3_heading",                default: "Getting Down And Dirty"
    t.text     "about_section_3_body",                   default: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!"
    t.string   "about_section_3_image_file_name"
    t.string   "about_section_3_image_content_type"
    t.integer  "about_section_3_image_file_size"
    t.datetime "about_section_3_image_updated_at"
    t.string   "team_subheading",                        default: "Our amazing team"
    t.string   "team_member_1_file_name"
    t.string   "team_member_1_content_type"
    t.integer  "team_member_1_file_size"
    t.datetime "team_member_1_updated_at"
    t.string   "team_member_1_name",                     default: "Kate Garland"
    t.string   "team_member_1_role",                     default: "Prodcut Designer"
    t.string   "team_member_1_social_icon_1_title",      default: "fa fa-facebook"
    t.string   "team_member_1_social_icon_1_url",        default: "https://www.facebook.com/alkami.io"
    t.string   "team_member_1_social_icon_2_title",      default: "fa fa-twitter"
    t.string   "team_member_1_social_icon_2_url",        default: "https://twitter.com/AlkamiWeb"
    t.string   "team_member_1_social_icon_3_title",      default: "fa fa-linkedin"
    t.string   "team_member_1_social_icon_3_url",        default: "https://www.linkedin.com/company/alkami"
    t.string   "team_member_2_file_name"
    t.string   "team_member_2_content_type"
    t.integer  "team_member_2_file_size"
    t.datetime "team_member_2_updated_at"
    t.string   "team_member_2_name",                     default: "Jack Jackingson"
    t.string   "team_member_2_role",                     default: "Lead Marketer"
    t.string   "team_member_2_social_icon_1_title",      default: "fa fa-facebook"
    t.string   "team_member_2_social_icon_1_url",        default: "https://www.facebook.com/alkami.io"
    t.string   "team_member_2_social_icon_2_title",      default: "fa fa-twitter"
    t.string   "team_member_2_social_icon_2_url",        default: "https://twitter.com/AlkamiWeb"
    t.string   "team_member_2_social_icon_3_title",      default: "fa fa-linkedin"
    t.string   "team_member_2_social_icon_3_url",        default: "https://www.linkedin.com/company/alkami"
    t.string   "team_member_3_file_name"
    t.string   "team_member_3_content_type"
    t.integer  "team_member_3_file_size"
    t.datetime "team_member_3_updated_at"
    t.string   "team_member_3_name",                     default: "Jenny Jenningson"
    t.string   "team_member_3_role",                     default: "Co-founder/CEO"
    t.string   "team_member_3_social_icon_1_title",      default: "fa fa-facebook"
    t.string   "team_member_3_social_icon_1_url",        default: "https://www.facebook.com/alkami.io"
    t.string   "team_member_3_social_icon_2_title",      default: "fa fa-twitter"
    t.string   "team_member_3_social_icon_2_url",        default: "https://twitter.com/AlkamiWeb"
    t.string   "team_member_3_social_icon_3_title",      default: "fa fa-linkedin"
    t.string   "team_member_3_social_icon_3_url",        default: "https://www.linkedin.com/company/alkami"
    t.text     "team_footer_text",                       default: "Write awesome stuff about your team!"
    t.string   "client_logo_1_file_name"
    t.string   "client_logo_1_content_type"
    t.integer  "client_logo_1_file_size"
    t.datetime "client_logo_1_updated_at"
    t.string   "client_logo_1_url",                      default: "http://www.alkami.io/"
    t.string   "client_logo_2_file_name"
    t.string   "client_logo_2_content_type"
    t.integer  "client_logo_2_file_size"
    t.datetime "client_logo_2_updated_at"
    t.string   "client_logo_2_url",                      default: "http://www.alkami.io/"
    t.string   "client_logo_3_file_name"
    t.string   "client_logo_3_content_type"
    t.integer  "client_logo_3_file_size"
    t.datetime "client_logo_3_updated_at"
    t.string   "client_logo_3_url",                      default: "http://www.alkami.io/"
    t.string   "client_logo_4_file_name"
    t.string   "client_logo_4_content_type"
    t.integer  "client_logo_4_file_size"
    t.datetime "client_logo_4_updated_at"
    t.string   "client_logo_4_url",                      default: "http://www.alkami.io/"
    t.string   "contact_us_subheading",                  default: "reach out with any questions"
    t.string   "theme_social_icon_1_title",              default: "fa fa-facebook"
    t.string   "theme_social_icon_1_url",                default: "https://www.facebook.com/alkami.io"
    t.string   "theme_social_icon_2_title",              default: "fa fa-twitter"
    t.string   "theme_social_icon_2_url",                default: "https://twitter.com/AlkamiWeb"
    t.string   "theme_social_icon_3_title",              default: "fa fa-linkedin"
    t.string   "theme_social_icon_3_url",                default: "https://www.linkedin.com/company/alkami"
    t.datetime "created_at",                                                                                                                                                                                                                                                                 null: false
    t.datetime "updated_at",                                                                                                                                                                                                                                                                 null: false
  end

  add_index "agencies", ["user_id"], name: "index_agencies_on_user_id", using: :btree

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
end
