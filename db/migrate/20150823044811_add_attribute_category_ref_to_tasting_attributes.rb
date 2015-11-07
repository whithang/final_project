class AddAttributeCategoryRefToTastingAttributes < ActiveRecord::Migration
  def change
    add_reference :tasting_attributes, :attribute_category, index: true, foreign_key: true
  end
end
