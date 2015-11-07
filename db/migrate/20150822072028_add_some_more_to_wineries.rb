class AddSomeMoreToWineries < ActiveRecord::Migration
  def change
    add_column :wineries, :logo, :string
    add_column :wineries, :club, :string
    add_column :wineries, :facebook, :string
    add_column :wineries, :twitter, :string
    add_column :wineries, :instagram, :string
    add_column :wineries, :pinterest, :string
  end
end
