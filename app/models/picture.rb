class Picture < ActiveRecord::Base
  has_attached_file :image, :styles => { :meduim => "250x250>", :thumb => "150x150>" }
end
