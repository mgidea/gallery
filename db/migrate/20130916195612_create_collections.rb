class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :title, null: false
      t.boolean :is_current, null: false, default: false

      t.timestamps
    end
  end
end
