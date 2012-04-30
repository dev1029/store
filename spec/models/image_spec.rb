require 'spec_helper'

describe Image do
  it { should belong_to :item }

  it { should validate_presence_of :file }
  it { should validate_presence_of :item }

  describe do
    let(:file) { File.open("#{Rails.root}/spec/fixtures/hp.jpg") }
    let(:image) { Fabricate :image, :file => file }

    specify { image.file.size.should == file.size }
  end
end
