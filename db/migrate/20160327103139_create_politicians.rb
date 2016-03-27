class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table :politicians do |t|
      t.string :name
      t.string :party
      t.string :office
      t.text :like
      t.text :hate
      t.integer :scared
      t.string :image_link

      t.timestamps null: false
    end
  end
end
