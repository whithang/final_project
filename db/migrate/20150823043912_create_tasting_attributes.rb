class CreateTastingAttributes < ActiveRecord::Migration
  def change
    create_table :tasting_attributes do |t|
      t.string :name
      t.text :bio
    end
  end
end
