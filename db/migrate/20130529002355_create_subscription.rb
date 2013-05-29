class CreateSubscription < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :group_id
    end
  end
end
