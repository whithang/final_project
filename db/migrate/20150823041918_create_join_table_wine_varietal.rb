class CreateJoinTableWineVarietal < ActiveRecord::Migration
  def change
    create_join_table :wines, :varietals do |t|
       t.index [:wine_id, :varietal_id]
       t.index [:varietal_id, :wine_id]
    end
  end
end
