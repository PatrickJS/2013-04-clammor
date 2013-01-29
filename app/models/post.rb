class Post < ActiveRecord::Base
  attr_accessible :content, :title

  belongs_to :user
  has_many :comments

  validates :title, :presence => true
  validates :content, :presence => true
end
