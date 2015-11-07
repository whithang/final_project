class CreateAtmosphere < ActiveRecord::Migration
  def change
    create_table :atmospheres do |t|
      t.string :name
    end
  end
end
