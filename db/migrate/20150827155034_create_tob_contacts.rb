class CreateTobContacts < ActiveRecord::Migration
  def change
    create_table :tob_contacts do |t|
      t.string :email
      t.string :phone
      t.string :social
      t.integer :tob_id
      t.integer :address_id

      t.timestamps null: false
    end
  end
end
