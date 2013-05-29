class Comment < ActiveRecord::Base
  validates_presence_of :content

  belongs_to :post, foreign_key: 'post_id'
  belongs_to :user, foreign_key: 'user_id'

end
