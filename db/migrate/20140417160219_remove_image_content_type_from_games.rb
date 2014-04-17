class RemoveImageContentTypeFromGames < ActiveRecord::Migration
  def change
    remove_column :games, :image_content_type, :string
  end
end
