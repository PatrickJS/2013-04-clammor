require 'spec_helper'

describe Group do
  # Simple validations.
  it { should validate_uniqueness_of(:name) }
  it { should validate_presence_of(:motto) }

  # More complex associations
  it { should have_many(:subscriptions) }
  it { should have_many(:users).through(:subscriptions) }
end
