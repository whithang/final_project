class AddPercentageToVarietalsWines < ActiveRecord::Migration
  def change
    add_column :varietals_wines, :percentage, :float
  end
end
