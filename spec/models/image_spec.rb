require 'spec_helper'

describe Image do
  it { should belong_to(:item) }
end
