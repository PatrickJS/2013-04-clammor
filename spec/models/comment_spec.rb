require 'spec_helper'

describe Comment do
  it { should validate_presence_of(:content) }

  # Simple associations
  it { should belong_to(:post) }
  it { should belong_to(:user) }
end
