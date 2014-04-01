class Game < ActiveRecord::Base
  validates :name, :reg_price, :sale_price, :stock_quantity, :release_year, presence: true
  validates :reg_price, :sale_price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :stock_quantity, numericality: { only_integer: true }
end
