class Subscription < ActiveRecord::Base
  # TODO Implement a Subscription custom validation. See subscription_spec.rb for specification.
  validates_date :renew_date

  belongs_to :group, foreign_key: 'group_id'
  belongs_to :user, foreign_key: 'user_id'

  def renew_date_is_valid_datetime
    # TODO Should validate that the renew_date column is a valid DateTime.  See subscription_spec.rb for more tips
  end
end
