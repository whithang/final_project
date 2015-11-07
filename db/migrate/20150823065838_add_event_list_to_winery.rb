class AddEventListToWinery < ActiveRecord::Migration
  def change
    add_column :wineries, :event_list, :text
  end
end
