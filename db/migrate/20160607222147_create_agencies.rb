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

      t.string     :about_subheading,                 default: "Learn about us"
      t.string     :about_section_1_year,             default: "2009-2011"
      t.string     :about_section_1_heading,          default: "Our Humble Beginnings"
      t.text       :about_section_1_body,             default: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!"
      t.attachment :about_section_1_image

      t.string     :about_section_2_year,             default: "March 2012"
      t.string     :about_section_2_heading,          default: "A Company Is Born"
      t.text       :about_section_2_body,             default: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!"
      t.attachment :about_section_2_image

      t.string     :about_section_3_year,             default: "January 2013"
      t.string     :about_section_3_heading,          default: "Getting Down And Dirty"
      t.text       :about_section_3_body,             default: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!"
      t.attachment :about_section_3_image

      t.string     :team_subheading,                  default: "Our amazing team"
      t.attachment :team_member_1
      t.string     :team_member_1_name,               default: "Kate Garland"
      t.string     :team_member_1_role,               default: "Prodcut Designer"

      t.attachment :team_member_2
      t.string     :team_member_2_name,               default: "Jack Jackingson"
      t.string     :team_member_2_role,               default: "Lead Marketer"

      t.attachment :team_member_3
      t.string     :team_member_3_name,               default: "Jenny Jenningson"
      t.string     :team_member_3_role,               default: "Co-founder/CEO"
      t.text       :team_footer_text,                 default: "Write awesome stuff about your team!"

      t.attachment :client_logo_1
      t.attachment :client_logo_2
      t.attachment :client_logo_3
      t.attachment :client_logo_4


      t.timestamps null: false
    end
  end
end
