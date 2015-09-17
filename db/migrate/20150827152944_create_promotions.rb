class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      # t.integer :product_id
      t.string :title
      t.text :description
      t.string :image
      t.string :url
      t.date :started_at
      t.date :endded_at

      t.timestamps null: false
    end
  end
end
