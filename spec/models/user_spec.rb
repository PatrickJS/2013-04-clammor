require 'spec_helper'

describe User do
  # Simple validations.  Do these first
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:email) }

  # More complex validations
  it { should_not allow_value("badEmail").for(:email) }
  it { should allow_value("good@email.com").for(:email) }

  # Simple associations
  it { should have_many(:posts) }
  it { should have_many(:comments) }
  it { should have_one(:status) }

  # More complex associations
  it { should have_many(:subscriptions) }
  it { should have_many(:groups).through(:subscriptions) }
end
