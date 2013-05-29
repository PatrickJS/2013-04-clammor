class CreatePost < ActiveRecord::Migration
  def change
    create_table :post do |t|
      t.interger :user_id
      t.string :title
      t.text :content
    end

  end
end
