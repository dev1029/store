require 'spec_helper'

describe CartsController do
  describe 'should build order on show' do
    before { get :show } 

    specify { assigns(:order).should be_new_record }
  end
end
