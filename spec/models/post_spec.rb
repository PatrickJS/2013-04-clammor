require 'spec_helper'

describe Post do
  # Simple validations
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:content) }

  # Simple associations
  it { should belong_to(:user) }
  it { should have_many(:comments) }

  it "should destroy all associated comments when a Post is deleted" do
    post = Post.create({ :title => "Test", :content => "Testing the model" })
    3.times { post.comments << Comment.create({ :content => "Random comment" }) }
    expect { post.destroy }.to change { Comment.all.length }.from(3).to(0)
  end
end
