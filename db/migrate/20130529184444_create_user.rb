class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer

    end
  end
end
