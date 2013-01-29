require 'spec_helper'

describe Post do
  # Simple validations
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:content) }

  # Simple associations
  it { should belong_to(:user) }
  it { should have_many(:comments) }

  it "should destroy all associated comments when a Post is deleted" do
    post = FactoryGirl.create(:post)
    3.times { post.comments << FactoryGirl.create(:comment) }
  end
end
