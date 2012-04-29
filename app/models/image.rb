class Image < ActiveRecord::Base
  attr_accessible :file

  belongs_to :item

  validates_presence_of :file, :item

  validates_property :format, :of => :file, :in => [:jpeg, :jpg, :png]

  image_accessor :file
end
