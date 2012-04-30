class Order < ActiveRecord::Base
  attr_accessor :cart  

  has_many :positions, :dependent => :destroy
  has_many :items, :through => :positions

  before_validation :set_item_ids

  private
    def set_item_ids
      errors[:base] << I18n.t('cart_is_empty') if cart.items.empty?

      self.item_ids = cart.item_ids
    end
end
