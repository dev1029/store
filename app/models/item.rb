class Item < ActiveRecord::Base
  attr_accessible :model, :vendor

  belongs_to :category

  delegate :title, :to => :category, :prefix => true

  validates_presence_of :category, :model, :vendor

  has_many :images, :dependent => :destroy
  has_many :properties, :dependent => :destroy
  has_many :purchases

  searchable do
    text :category_title
    text :model
    text :vendor

    text :property_texts
  end

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

    def property_texts
      properties.map(&:text).join(';')
    end
end
