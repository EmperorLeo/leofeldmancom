class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.datetime :created

      t.timestamps null: false
    end
  end
end
