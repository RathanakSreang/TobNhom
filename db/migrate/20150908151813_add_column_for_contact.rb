class AddColumnForContact < ActiveRecord::Migration
  def change
    add_column :user_contacts, :address1, :string
    add_column :user_contacts, :address2, :string
    add_column :user_contacts, :province, :string

    add_column :tob_contacts, :address1, :string
    add_column :tob_contacts, :address2, :string
    add_column :tob_contacts, :province, :string
    add_column :tob_contacts, :latitude, :float
    add_column :tob_contacts, :longitude, :float

    remove_column :tob_contacts, :address_id, :integer
    remove_column :user_contacts, :address_id, :integer
  end
end
