class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :product_id      
      t.text :description
      t.text :fields

      t.timestamps null: false
    end
  end
end
