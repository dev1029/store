require 'spec_helper'

describe CategoriesController do
  describe 'should create cart at the first visit' do
    before { get :index }

    specify { Cart.count.should == 1 }
    specify { controller.session.should have_key(:cart_id) }
  end

  describe 'should not create cart if cart_id stored in session' do
    before { get :index }

    specify {
      expect { get :index }.to change(Cart, :count).by(0)
    }
  end
end
