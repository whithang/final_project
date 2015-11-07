class AddTypeRefToTastingAttributes < ActiveRecord::Migration
  def change
    add_reference :tasting_attributes, :wine_type, index: true, foreign_key: true
  end
end
