class AddWineRefToTastingNotes < ActiveRecord::Migration
  def change
    add_reference :tasting_notes, :wine, index: true, foreign_key: true
  end
end
