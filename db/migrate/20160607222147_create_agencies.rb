class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.references :user, index: true, foreign_key: true
      t.attachment :brand_logo
      t.string     :intro_lead_in,  default: "Welcome To Our Studio!"
      t.string     :intro_heading,  default: "It's Nice To Meet You"

      t.timestamps null: false
    end
  end
end
