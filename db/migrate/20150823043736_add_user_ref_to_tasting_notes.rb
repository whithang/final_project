class AddUserRefToTastingNotes < ActiveRecord::Migration
  def change
    add_reference :tasting_notes, :user, index: true, foreign_key: true
  end
end
