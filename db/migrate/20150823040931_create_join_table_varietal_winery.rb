class CreateJoinTableVarietalWinery < ActiveRecord::Migration
  def change
    create_join_table :varietals, :wineries do |t|
       t.index [:varietal_id, :winery_id]
       t.index [:winery_id, :varietal_id]
    end
  end
end
