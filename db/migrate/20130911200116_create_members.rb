class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :phone_number, null: false
      t.string :address, null: false
      t.string :birthplace
      t.string :style
      t.string :role, null: false

      t.timestamps
    end
  end
end
