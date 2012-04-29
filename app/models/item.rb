class Item < ActiveRecord::Base
  attr_accessible :model, :vendor

  belongs_to :category

  validates_presence_of :category, :model, :vendor

  has_many :images, :dependent => :destroy
  has_many :properties, :dependent => :destroy

  def to_s
    "#{vendor} #{model}"
  end

  def image
    first_image_file
  end

  private
    def first_image
      images.first
    end

    delegate :file, :to => :first_image, :allow_nil => true, :prefix => true
end
