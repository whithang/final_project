class RenameVarietalsWineries < ActiveRecord::Migration
  def self.up
    rename_table :varietals_wineries, :winery_varietals
  end

  def self.down
    rename_table :winery_varietals, :varietals_wineries
  end
end
