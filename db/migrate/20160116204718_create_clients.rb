class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :business
      t.string :city
      t.string :owner_or_manager
      t.string :number
      t.string :email
      t.string :how_often

      t.timestamps null: false
    end
  end
end
