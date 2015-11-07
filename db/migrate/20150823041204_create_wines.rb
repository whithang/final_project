class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :year
      t.string :region
      t.text :bio
      t.float :price
      t.float :club_price
      t.string :photo
    end
  end
end
