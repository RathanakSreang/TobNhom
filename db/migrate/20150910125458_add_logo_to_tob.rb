class AddLogoToTob < ActiveRecord::Migration
  def change
    add_column :tobs, :logo, :string
  end
end
