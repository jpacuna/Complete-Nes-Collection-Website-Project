class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.decimal :reg_price
      t.decimal :sale_price
      t.integer :stock_quantity
      t.integer :release_year
      t.integer :publisher_id
      t.integer :genre_id
      t.integer :developer_id

      t.timestamps
    end
  end
end
