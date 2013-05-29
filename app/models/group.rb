class Group < ActiveRecord::Base
  validates_uniqueness_of :name
  validates_presence_of :motto

  has_many :subscriptions, foreign_key: 'group_id'
  has_many :users, through: :subscriptions
end
