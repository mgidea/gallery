class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :member_id, null: false
      t.integer :artwork_id, null: false

      t.timestamps
    end
  end
end
