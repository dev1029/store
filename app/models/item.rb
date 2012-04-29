class Item < ActiveRecord::Base
  attr_accessible :model, :vendor

  belongs_to :category

  validates_presence_of :category
  validates_presence_of :model
  validates_presence_of :vendor

  has_many :images, :dependent => :destroy
  has_many :properties, :dependent => :destroy

  def to_s
    "#{vendor} #{model}"
  end
end
