class AddlatlongToWinery < ActiveRecord::Migration
  def change
  	add_column :wineries, :lat, :decimal, {:precision=>10, :scale=>6}
	add_column :wineries, :lng, :decimal, {:precision=>10, :scale=>6}
  end
end
