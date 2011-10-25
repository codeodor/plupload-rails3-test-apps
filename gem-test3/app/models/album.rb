class Album < ActiveRecord::Base
  attr_accessible :title, :pictures_attributes
  
  has_many :pictures
  accepts_nested_attributes_for :pictures
end
