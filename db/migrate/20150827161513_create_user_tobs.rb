class CreateUserTobs < ActiveRecord::Migration
  def change
    create_table :user_tobs do |t|
      t.integer :user_id
      t.integer :tob_id
      t.integer :role

      t.timestamps null: false
    end
  end
end
