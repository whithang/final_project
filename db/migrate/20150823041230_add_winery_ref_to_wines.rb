class AddWineryRefToWines < ActiveRecord::Migration
  def change
    add_reference :wines, :winery, index: true, foreign_key: true
  end
end
