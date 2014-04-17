class RemoveImageFileSizeFromGames < ActiveRecord::Migration
  def change
    remove_column :games, :image_file_size, :integer
  end
end
