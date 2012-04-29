class Purchase < ActiveRecord::Base
  attr_accessible :cart, :item

  belongs_to :cart
  belongs_to :item

  validates_presence_of :cart, :item
end
