class AddWineRefToTastingMenu < ActiveRecord::Migration
  def change
    add_reference :tasting_menus, :wine, index: true, foreign_key: true
  end
end
