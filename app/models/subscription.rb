class Subscription < ActiveRecord::Base
  validates_date :renew_date

  belongs_to :group, foreign_key: 'group_id'
  belongs_to :user, foreign_key: 'user_id'

  def renew_date_is_valid_datetime
  end
end
