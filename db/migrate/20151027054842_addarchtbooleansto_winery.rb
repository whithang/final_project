class AddarchtbooleanstoWinery < ActiveRecord::Migration
  def change
  	add_column :wineries, :historic, :boolean, :default => false
  	add_column :wineries, :modern, :boolean, :default => false
  	add_column :wineries, :eccentric, :boolean, :default => false
  end
end
