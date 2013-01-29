class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_one :status, :dependent => :destroy
  has_many :posts

  has_many :subscriptions
  has_many :groups, :through => :subscriptions

  has_many :comments

  validates :name, :presence => true
  validates :email, :uniqueness => true, :format => { :with => /\w+@\w+\.(com|net|org)/ } 

  after_create :welcome_status

  def welcome_status
    # TODO Should create a new Status after a user is created.  See user_spec.rb for more tips 
    self.status = Status.create({ :content => "I Just joined Clammor!"})
    self.save
  end
end
