class CreateStatus < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :user_id
      t.text :content

      t.timestamp
    end
  end
end
