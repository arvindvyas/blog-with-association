class Home < ActiveRecord::Base
  attr_accessible :name, :title

 attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", 
  	:thumb => "100x100>" }, 
  :default_url => "/images/:style/missing.png"


validates :avatar, allow_blank: true, format: {
  with: %r{\.gif|jpg|png}i,
  message: 'must be a url for gif, jpg, or png image.'
}

validates_with AttachmentPresenceValidator, :attributes => :avatar



  
  validates :name, :uniqueness => true
validates :name, :presence => true




end
