require 'spec_helper'

describe Item do
  it { should belong_to :category }

  it { should validate_presence_of :category }
  it { should validate_presence_of :model }
  it { should validate_presence_of :vendor }

  it { should have_many(:images).dependent(:destroy) }
  it { should have_many(:properties).dependent(:destroy) }
end
