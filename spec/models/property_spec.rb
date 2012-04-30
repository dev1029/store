require 'spec_helper'

describe Property do
  it { should belong_to :item }

  it { should validate_presence_of :item }
  it { should validate_presence_of :text }
end
