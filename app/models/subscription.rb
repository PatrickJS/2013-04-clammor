class Subscription < ActiveRecord::Base
  attr_accessible :renew_date

  belongs_to :user
  belongs_to :group

  validate :renew_date_is_valid_datetime

  def renew_date_is_valid_datetime
    errors.add(:renew_date, 'must be a valid datetime') if (!renew_date || DateTime.parse(renew_date.to_s).class != DateTime)
  end
end
