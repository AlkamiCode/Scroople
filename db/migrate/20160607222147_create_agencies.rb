class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.references :user, index: true, foreign_key: true
      t.attachment :brand_logo
      t.attachment :header_image
      t.string     :intro_lead_in,                   default: "Welcome To Our Studio!"
      t.string     :intro_heading,                   default: "It's Nice To Meet You"
      t.string     :services_subheading,             default: "Check out our awesome services"

      t.string     :services_icon_1,                 default: "fa fa-shopping-cart"
      t.string     :services_icon_1_heading,         default: "E-Commerce"
      t.text     :services_icon_1_subheading,        default: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit."

      t.string     :services_icon_2,                 default: "fa fa-laptop"
      t.string     :services_icon_2_heading,         default: "Responsive Design"
      t.text     :services_icon_2_subheading,        default: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit."

      t.string     :services_icon_3,                 default: "fa fa-lock"
      t.string     :services_icon_3_heading,         default: "Web Security"
      t.text     :services_icon_3_subheading,        default: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit."

      t.string     :portfolio_subheading,            default: "Check out our projects"

      t.attachment :portfolio_project_1_image
      t.string     :portfolio_project_1_name,        default: "Round Icons"
      t.string     :portfolio_project_1_category,    default: "Graphic Design"
      t.text       :portfolio_project_1_description, default: "Use this area to describe your project"
      t.string     :portfolio_project_1_date,        default: "July 2016"
      t.string     :portfolio_project_1_client,      default: "Alkami"

      t.attachment :portfolio_project_2_image
      t.string     :portfolio_project_2_name,        default: "StartUp Frame-Work"
      t.string     :portfolio_project_2_category,    default: "Web Development"
      t.text       :portfolio_project_2_description, default: "Use this area to describe your project"
      t.string     :portfolio_project_2_date,        default: "September 2015"
      t.string     :portfolio_project_2_client,      default: "Alkami"

      t.attachment :portfolio_project_3_image
      t.string     :portfolio_project_3_name,        default: "TreeHouse"
      t.string     :portfolio_project_3_category,    default: "Cloud Platform"
      t.text       :portfolio_project_3_description, default: "Use this area to describe your project"
      t.string     :portfolio_project_3_date,        default: "December 2015"
      t.string     :portfolio_project_3_client,      default: "Alkami"

      t.timestamps null: false
    end
  end
end
