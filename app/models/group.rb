class Group < ActiveRecord::Base
  validates_uniqueness_of :name
  validates_presence_of :motto
  # TODO Implement Group associations. See group_spec.rb for specification.

  # TODO Implement Group validations. See group_spec.rb for specification.
  has_many :subscriptions, foreign_key: 'group_id'
  has_many :users, through: :subscriptions
end
