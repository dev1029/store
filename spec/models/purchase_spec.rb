require 'spec_helper'

describe Purchase do
  it { should belong_to(:cart) }
  it { should belong_to(:item) }

  it { should validate_presence_of(:cart) }
  it { should validate_presence_of(:item) }
end
