class DropTobUrl < ActiveRecord::Migration
  def change
    remove_column :tobs, :url, :string
  end
end
