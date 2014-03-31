class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.decimal :reg_price
      t.decimal :sale_price
      t.integer :stock_quantity
      t.integer :release_year
      t.references :publisher
      t.references :genre
      t.references :developer

      t.timestamps
    end
  end
end
