class Comment < ActiveRecord::Base
  attr_accessible :content

  belongs_to :user
  belongs_to :post

  validates :content, :presence => true
end
