class CreateSocialIcons < ActiveRecord::Migration
  def change
    create_table :social_icons do |t|
      t.string :title
      t.string :url
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
