class AddImageToLogos < ActiveRecord::Migration
  def self.up
    add_attachment :logos, :image
  end

  def self.down
    remove_attachment :logos, :image
  end
end
