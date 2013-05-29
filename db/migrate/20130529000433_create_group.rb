class CreateGroup < ActiveRecord::Migration
  def up
    create_table :groups do |t|
      t.string :name
      t.string :motto
      t.timestamps
    end
    add_index :groups, :name, :unique => true
  end

  def down
    drop_table :groups
  end
end
