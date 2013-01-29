class Group < ActiveRecord::Base
  attr_accessible :motto, :name

  has_many :subscriptions, :dependent => :destroy
  has_many :users, :through => :subscriptions

  validates :name, :uniqueness => true
  validates :motto, :presence => true
end
