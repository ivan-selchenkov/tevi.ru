class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :name
      t.text :description
      t.timestamp :datetime
      t.float :price
      t.boolean :is_sold

      t.timestamps
    end
  end
end
