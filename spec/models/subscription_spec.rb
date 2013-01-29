require 'spec_helper'

describe Subscription do
  # More complex validations: write a custom validation helper.
  it { should_not allow_value("needs_to_be_a_date").for(:renew_date) }
  it { should allow_value(DateTime.now.to_s).for(:renew_date) }

  it { should belong_to(:group) }
  it { should belong_to(:user) }
end
