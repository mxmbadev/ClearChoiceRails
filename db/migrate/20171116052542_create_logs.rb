class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.datetime :date
      t.string :service
      t.string :payment_status
      t.decimal :amount
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
