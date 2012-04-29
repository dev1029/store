class Property < ActiveRecord::Base
  attr_accessible :text

  belongs_to :item

  validates_presence_of :item
  validates_presence_of :text
end
