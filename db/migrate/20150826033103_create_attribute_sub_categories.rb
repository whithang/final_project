class CreateAttributeSubCategories < ActiveRecord::Migration
  def change
    create_table :attribute_sub_categories do |t|
      t.string :name
    end
  end
end
