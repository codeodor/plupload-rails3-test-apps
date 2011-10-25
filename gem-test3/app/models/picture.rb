class Picture < ActiveRecord::Base
  belongs_to :album
  attr_accessible :picture
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
