class Order < ActiveRecord::Base
  validates :status, :pst_rate, :gst_rate, :hst_rate, :customer_id, presence: true
  validates :pst_rate, :gst_rate, :hst_rate, numericality: { greater_than_or_equal_to: 0.00 }
  belongs_to :customer
end
