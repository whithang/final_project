class AddAtmosphereRefToWinery < ActiveRecord::Migration
  def change
    add_reference :wineries, :atmosphere, index: true, foreign_key: true
  end
end
