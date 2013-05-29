class Status < ActiveRecord::Base
  attr_accessible :content

  has_one :user

end
