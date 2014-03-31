class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.decimal :reg_price
      t.decimal :sale_price
      t.references :game
      t.references :order

      t.timestamps
    end
  end
end
