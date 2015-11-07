class AddLevelToAttributeSubCategories < ActiveRecord::Migration
  def change
    add_column :attribute_sub_categories, :geek_level, :integer
  end
end
