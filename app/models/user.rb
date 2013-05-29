class User < ActiveRecord::Base
  attr_accessible :name, :email

  validates_presence_of :name
  validates_uniqueness_of :email
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create

  has_many :posts
  has_many :comments
  has_many :subscriptions
  has_many :groups, through: :subscriptions
  has_one :status, dependent: :destroy

  after_create :welcome_status

  def welcome_status
    new_status = Status.new(content: "I Just joined Clammor!")
    self.status = new_status
  end
end
