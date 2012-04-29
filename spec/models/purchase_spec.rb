require 'spec_helper'

describe Purchase do
  it { should belong_to(:cart) }
  it { should belong_to(:item) }
end
