class AddTitleToThemes < ActiveRecord::Migration
  def self.up
   add_column :themes, :title, :string
  end

  def self.down
   remove_column :themes, :title
  end
end
