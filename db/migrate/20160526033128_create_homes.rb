class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :dateOfService
      t.string :name
      t.string :phone
      t.string :address
      t.string :price
      t.string :nextService
      t.text :notes

      t.timestamps null: false
    end
  end
end
