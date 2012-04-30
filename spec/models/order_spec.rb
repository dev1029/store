require 'spec_helper'

describe Order do
  it { should have_many(:positions).dependent(:destroy) } 
  it { should have_many(:items).through(:positions) } 

  describe 'items should be' do
    let(:cart) { Fabricate :cart }
    let(:order) { Order.new }

    describe 'the same as carts items' do
      let(:foo_item) { Fabricate :item }
      let(:bar_item) { Fabricate :item }

      before { cart.items << foo_item }
      before { cart.items << bar_item }

      before { order.cart = cart }
      before { order.save }

      specify { order.should be_persisted }
      specify { order.items.should == [foo_item, bar_item] }
    end

    describe 'be empty if cart is empty' do
      before { order.cart = cart }
      before { order.save }

      specify { order.should_not be_persisted }
      specify { order.should_not be_valid }
      specify { order.errors.messages[:base].should == [I18n.t('cart_is_empty')] }
    end
  end
end
