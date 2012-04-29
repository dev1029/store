class Purchase < ActiveRecord::Base
  belongs_to :cart
  belongs_to :item
  # attr_accessible :title, :body
end
