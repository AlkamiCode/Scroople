class AddLogoToThemes < ActiveRecord::Migration
  def self.up
    add_attachment :themes, :logo
  end

  def self.down
    remove_attachment :themes, :logo
  end
end
