class Group < ActiveRecord::Base
  attr_accessible :motto, :name

  has_many :subscriptions
  has_many :users, :through => :subscriptions

  validates :name, :uniqueness => true
  validates :motto, :presence => true
end
