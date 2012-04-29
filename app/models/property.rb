class Property < ActiveRecord::Base
  attr_accessible :text

  belongs_to :item

  validates_presence_of :item, :text

  alias_attribute :to_s, :text
end
