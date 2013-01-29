class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer     :user_id
      t.integer     :group_id
      t.datetime    :renew_date

      t.timestamps
    end
  end
end
