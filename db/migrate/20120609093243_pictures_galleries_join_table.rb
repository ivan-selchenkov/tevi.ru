class PicturesGalleriesJoinTable < ActiveRecord::Migration
  def up
    create_table :galleries_pictures, :id => false do |t|
      t.references :gallery
      t.references :picture
    end
  end

  def down
    drop_table :galleries_pictures
  end
end
