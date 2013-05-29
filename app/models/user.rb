class User < ActiveRecord::Base
  # TODO Implement validation for User model. See user_spec.rb for specification.
  validates_presence_of :name
  validates_uniqueness_of :email

  # TODO implement association for User model. See user_spec.rb for specification.
    has_many :posts
    has_many :comments
    has_one :status

  # TODO Implement an after_create callback -- welcome_status
    after_create :welcome_status

  def welcome_status
    # TODO Should create a new Status after a user is created.  See user_spec.rb for more tips
  end
end
