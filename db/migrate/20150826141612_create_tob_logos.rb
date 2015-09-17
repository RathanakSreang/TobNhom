class CreateTobLogos < ActiveRecord::Migration
  def change
    create_table :tob_logos do |t|
      t.integer :tob_id
      t.string :title
      t.string :description
      t.string :url
      t.string :image

      t.timestamps null: false
    end
  end
end
