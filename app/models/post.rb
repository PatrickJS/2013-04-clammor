class Post < ActiveRecord::Base
  attr_accessible :content, :title

  belongs_to :user

  validate :title, :presence => true
  validate :content, :presence => true
end
