require 'spec_helper'

describe Cart do
  it { should have_many(:purchases).dependent(:destroy) }
  it { should have_many(:items).through(:purchases) }
end
