class CreateSubscription < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :group_id
      t.integer :user_id
      t.date :renew_date

      t.timestamps
    end
  end
end
