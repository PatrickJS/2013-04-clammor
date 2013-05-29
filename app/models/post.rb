class Post < ActiveRecord::Base
  attr_accessible :title, :content

  validates_presence_of :content
  validates_presence_of :title

  belongs_to :user
  has_many :comments, dependent: :destroy

end
