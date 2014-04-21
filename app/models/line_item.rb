class LineItem < ActiveRecord::Base
  validates :quantity, :reg_price, :sale_price, :game_id, :order_id, presence: true
  validates :reg_price, :sale_price, numericality: { greater_than_or_equal_to: 0.01 }
  belongs_to :order
  belongs_to :game
  belongs_to :cart
end
