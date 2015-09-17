class RenameTableTobLogo < ActiveRecord::Migration
  def change
    rename_table :tob_logos, :tob_sliders
  end
end
