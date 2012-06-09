class Picture < ActiveRecord::Base

  has_and_belongs_to_many :galleries

  has_attached_file :image
  has_attached_file :thumb, :styles => { :meduim => "250x250>", :thumb => "150x150>" }

  validates :name, :presence => true
  validates :description, :presence => true
  validates :image, :presence => true
  validates :thumb, :presence => true


  attr_accessible :name, :description, :image, :thumb, :datetime, :is_sold, :price, :galleries

  alias_method :__old_galleries, :galleries

  def galleries
    if __old_galleries
      __old_galleries.map(&:name).join ", "
    else
      ""
    end
  end

  def galleries= value
    __old_galleries.clear
    __old_galleries << value.split(", ").map { |t| Gallery.find_or_create_by_name t }
  end

end
