class AddSubCatRefToTastingAttributes < ActiveRecord::Migration
  def change
    add_reference :tasting_attributes, :attribute_sub_category, index: true, foreign_key: true
  end
end
