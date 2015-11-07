class CreateTastingNotes < ActiveRecord::Migration
  def change
    create_table :tasting_notes do |t|
      t.date :tasting_date
      t.text :notes
      t.boolean :purchased
    end
  end
end
