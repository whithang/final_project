class AddbooleanstoWinery < ActiveRecord::Migration
  def change
  	add_column :wineries, :public, :boolean, :default => false
  	add_column :wineries, :adults, :boolean, :default => false
  end
end
