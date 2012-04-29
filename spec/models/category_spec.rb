require 'spec_helper'

describe Category do
  subject { Fabricate :category }

  it { should validate_presence_of :title }
  it { should validate_uniqueness_of :title }

  context '#self.root' do
    describe 'should create category' do
      specify { Category.root.should be_persisted }
    end

    describe 'should find root category' do
      before { Category.root }

      specify {
        expect { Category.root }.to change(Category, :count).by(0)
      }
    end
  end
end
