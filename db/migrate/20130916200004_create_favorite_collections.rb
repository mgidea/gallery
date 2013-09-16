class CreateFavoriteCollections < ActiveRecord::Migration
  def change
    create_table :favorite_collections do |t|
      t.integer :member_id, null: false
      t.integer :collection_id, null: false

      t.timestamps
    end
  end
end
