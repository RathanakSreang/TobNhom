class CreateUserContacts < ActiveRecord::Migration
  def change
    create_table :user_contacts do |t|
      t.integer :user_id
      t.integer :address_id
      t.string :phone
      t.string :social

      t.timestamps null: false
    end
  end
end
