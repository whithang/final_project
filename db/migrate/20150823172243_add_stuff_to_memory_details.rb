class AddStuffToMemoryDetails < ActiveRecord::Migration
  def change
    add_column :memory_details, :visit_time, :time
    add_column :memory_details, :reservation, :boolean
  end
end
