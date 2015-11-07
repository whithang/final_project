class CreateTastingMenu < ActiveRecord::Migration
  def change
    create_table :tasting_menus do |t|
      t.date :menu_start_date
    end
  end
end
