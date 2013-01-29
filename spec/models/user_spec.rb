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

  it "should create a default Status when a user is created" do
    user = User.create({ :name => "Jon Doe", :email => "test@alright.com" })
    user.status.should_not be_nil
    user.status.content.should == "I Just joined Clammor!"
  end

  it "should delete the user's status if a user is deleted" do
    # Implement a test that checks whether a User's status is deleted 
    # when a User is destroyed see post_spec.rb for inspiration. 
    pending
  end 
end
