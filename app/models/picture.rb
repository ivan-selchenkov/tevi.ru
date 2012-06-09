class Picture < ActiveRecord::Base
  has_attached_file :image
  has_attached_file :thumb, :styles => { :meduim => "250x250>", :thumb => "150x150>" }

  validates :name, :presence => true
  validates :description, :presence => true
  validates :image, :presence => true
  validates :thumb, :presence => true


  attr_accessible :name, :description, :image, :thumb, :datetime, :is_sold, :price

end
