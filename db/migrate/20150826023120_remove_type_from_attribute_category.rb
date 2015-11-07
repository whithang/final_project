class RemoveTypeFromAttributeCategory < ActiveRecord::Migration
  def change
    remove_column :attribute_categories, :wine_type_id, :string
  end
end
