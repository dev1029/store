require 'spec_helper'

describe PurchasesController do
  describe 'should set cart on create' do
    let(:item) { Fabricate :item }

    before { post :create, :category_id => item.category.id, :item_id => item.id }

    specify { Purchase.count.should == 1 }
    specify { Purchase.first.item.should == item }
    specify { Purchase.first.cart.should == assigns(:cart) }
  end
end
