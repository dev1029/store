require 'spec_helper'

describe Position do
  it { should belong_to :item } 
  it { should belong_to :order } 

  it { should validate_presence_of :item }
  it { should validate_presence_of :order }
end
