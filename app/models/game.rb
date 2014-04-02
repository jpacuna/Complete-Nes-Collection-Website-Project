class Game < ActiveRecord::Base
  validates :name, :reg_price, :sale_price, :stock_quantity, :release_year, :developer_id, :genre_id, :publisher_id, presence: true
  validates :reg_price, :sale_price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :stock_quantity, numericality: { only_integer: true }
  belongs_to :genre
  belongs_to :developer
  belongs_to :publisher
  
  #has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  #validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
