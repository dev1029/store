require 'spec_helper'

describe ItemsController do
  describe 'should build purchase on show' do
    let(:item) { Fabricate :item }

    before { get :show, :category_id => item.category.id, :id => item.id }

    specify { assigns(:purchase).should be_new_record }
    specify { assigns(:purchase).item.should == item }
  end
end
