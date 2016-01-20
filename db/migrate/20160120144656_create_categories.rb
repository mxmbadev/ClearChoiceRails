class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps null: false

    end

    create_table :client_categories do |t|
      t.belongs_to :client
      t.belongs_to :category
      t.integer :category_id
    end
  end
end
