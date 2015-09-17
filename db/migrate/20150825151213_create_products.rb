class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :user_id
      t.string :tob_id
      t.integer :branch_id
      t.integer :category_id
      t.string :name
      t.string :sku
      t.decimal :price
      t.integer :qty
      t.boolean :status
      t.string :code
      t.string :condition
      t.float :discount
      t.string :keyword

      t.timestamps null: false
    end
  end
end
