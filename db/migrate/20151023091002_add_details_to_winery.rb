class AddDetailsToWinery < ActiveRecord::Migration
  def change
    add_column :wineries, :winery_size, :integer
    add_column :wineries, :party_scale, :integer
  end
end
