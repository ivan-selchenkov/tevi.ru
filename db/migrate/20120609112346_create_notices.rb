class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :title
      t.text :content
      t.date :date, :default => Date.today
      t.boolean :show

      t.timestamps
    end
  end
end
