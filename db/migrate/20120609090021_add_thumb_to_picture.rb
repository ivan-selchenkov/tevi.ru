class AddThumbToPicture < ActiveRecord::Migration
  def self.up
    change_table :pictures do |t|
      t.has_attached_file :thumb
    end
  end

  def self.down
    drop_attached_file :pictures, :thumb
  end
end
