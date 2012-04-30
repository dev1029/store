class Order < ActiveRecord::Base
   has_many :positions, :dependent => :destroy
   has_many :items, :through => :positions
end
