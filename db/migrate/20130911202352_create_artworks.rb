class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.integer :member_id, null: false
      t.date :creation_date, null: false
      t.date :on_sale_date
      t.float :cost
      t.string :medium, null: false
      t.boolean :available, null: false, default: false

      t.timestamps
    end
  end
end
