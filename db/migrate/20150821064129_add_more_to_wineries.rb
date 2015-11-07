class AddMoreToWineries < ActiveRecord::Migration
  def change
    add_column :wineries, :appointment_url, :string
    add_column :wineries, :food, :boolean
    add_column :wineries, :tour, :boolean
    add_column :wineries, :family, :boolean
  end
end
