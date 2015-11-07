class AddWineTypeRefToAttributeCategory < ActiveRecord::Migration
  def change
    add_reference :attribute_categories, :wine_type, index: true, foreign_key: true
  end
end
