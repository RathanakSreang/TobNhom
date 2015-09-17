class CreateTobs < ActiveRecord::Migration
  def change
    create_table :tobs do |t|
      t.string  :name
      t.string  :url
      t.boolean :status
      t.string  :description      
      t.date    :started_at
      t.date    :expired_at
      t.string  :key
      t.timestamps null: false
    end
  end
end
