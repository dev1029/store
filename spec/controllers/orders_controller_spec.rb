require 'spec_helper'

describe OrdersController do
  describe 'should set cart on create' do
    let(:cart) { Fabricate :cart }
    let(:foo_item) { Fabricate :item }
    let(:bar_item) { Fabricate :item }

    before { cart.items << foo_item }
    before { cart.items << bar_item }

    before { controller.stub(:cart).and_return(cart) } 

    before { post :create }

    specify { Order.count.should == 1 }
    specify { Order.first.items.should == [foo_item, bar_item] }
  end
end
