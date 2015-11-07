class AddSlugToWineries < ActiveRecord::Migration
  def change
    add_column :wineries, :slug, :string
  end
end
