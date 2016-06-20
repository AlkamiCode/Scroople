class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.references :user, index: true, foreign_key: true
      t.attachment :brand_logo
      t.attachment :header_image
      t.string     :intro_lead_in,  default: "Welcome To Our Studio!"
      t.string     :intro_heading,  default: "It's Nice To Meet You"
      t.string     :services_icon_1, default: "fa-shopping-cart"

      t.timestamps null: false
    end
  end
end
