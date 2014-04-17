class RemoveImageFileNameFromGames < ActiveRecord::Migration
  def change
    remove_column :games, :image_file_name, :string
  end
end
