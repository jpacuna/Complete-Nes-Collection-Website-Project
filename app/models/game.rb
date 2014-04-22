class Game < ActiveRecord::Base
  validates :name, :reg_price, :stock_quantity, :release_year, :developer_id, :genre_id, :publisher_id, presence: true
  validates :reg_price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :stock_quantity, numericality: { only_integer: true }
  belongs_to :genre
  belongs_to :developer
  belongs_to :publisher
  has_many :line_items
  
  mount_uploader :image, GameImageUploader
  
  def self.keyword_search(keywords, genre)
    keywords = "%" + keywords + "%"
    Game.where("(name LIKE ? OR description LIKE ?) AND genre_id = ?", keywords, keywords, genre)
  end
  
end
