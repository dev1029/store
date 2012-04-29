class Cart < ActiveRecord::Base
  has_many :purchases, :dependent => :destroy
  has_many :items, :through => :purchases
end
