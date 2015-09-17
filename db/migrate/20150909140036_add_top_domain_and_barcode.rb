class AddTopDomainAndBarcode < ActiveRecord::Migration
  def change
    add_column :tobs, :domain, :string
    add_column :tobs, :barcode, :string
  end
end
