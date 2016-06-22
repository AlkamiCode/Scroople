class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.references :user, index: true, foreign_key: true
      t.attachment :brand_logo
      t.attachment :header_image
      t.string     :intro_lead_in,               default: "Welcome To Our Studio!"
      t.string     :intro_heading,               default: "It's Nice To Meet You"
      t.string     :services_subheading,         default: "Check out our awesome services"

      t.string     :services_icon_1,             default: "fa fa-shopping-cart"
      t.string     :services_icon_1_heading,     default: "E-Commerce"
      t.text     :services_icon_1_subheading,    default: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit."

      t.string     :services_icon_2,             default: "fa fa-laptop"
      t.string     :services_icon_2_heading,     default: "Responsive Design"
      t.text     :services_icon_2_subheading,    default: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit."

      t.string     :services_icon_3,             default: "fa fa-lock"
      t.string     :services_icon_3_heading,     default: "Web Security"
      t.text     :services_icon_3_subheading,    default: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit."

      t.string     :portfolio_subheading,        default: "Check out our projects"

      t.timestamps null: false
    end
  end
end
