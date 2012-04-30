require 'spec_helper'

describe Order do
  it { should have_many(:positions).dependent(:destroy) } 
  it { should have_many(:items).through(:positions) } 
end
