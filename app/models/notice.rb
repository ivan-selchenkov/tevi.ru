class Notice < ActiveRecord::Base
  attr_accessible :content, :date, :show, :title

  validates :title, :presence => true
  validates :content, :presence => true
  validates :date, :presence => true
end
