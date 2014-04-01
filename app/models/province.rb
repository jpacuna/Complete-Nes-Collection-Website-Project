class Province < ActiveRecord::Base
  validates :name, :pst, :gst, :hst, presence: true
  validates :pst, :gst, :hst, numericality: { greater_than_or_equal_to: 0.00 }
  has_many :customers
end
