class RemovephotoFromWineries < ActiveRecord::Migration
  def up
    remove_column :wineries, :photo
  end
end
