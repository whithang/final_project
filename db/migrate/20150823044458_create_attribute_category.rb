class CreateAttributeCategory < ActiveRecord::Migration
  def change
    create_table :attribute_categories do |t|
      t.string :name
    end
  end
end
