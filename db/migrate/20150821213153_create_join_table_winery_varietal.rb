class CreateJoinTableWineryVarietal < ActiveRecord::Migration
  def change
    create_join_table :wineries, :varietals do |t|
      # t.index [:winery_id, :varietal_id]
      # t.index [:varietal_id, :winery_id]
    end
  end
end
