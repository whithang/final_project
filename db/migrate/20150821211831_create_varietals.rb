class CreateVarietals < ActiveRecord::Migration
  def change
    create_table :varietals do |t|
      t.string :name
      t.text :bio
    end
  end
end
