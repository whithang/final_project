class AddTourListToWinery < ActiveRecord::Migration
  def change
    add_column :wineries, :tour_list, :text
  end
end
