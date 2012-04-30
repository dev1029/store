class Position < ActiveRecord::Base
   belongs_to :item 
   belongs_to :order 

   validates_presence_of :item, :order
end
