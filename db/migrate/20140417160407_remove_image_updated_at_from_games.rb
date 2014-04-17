class RemoveImageUpdatedAtFromGames < ActiveRecord::Migration
  def change
    remove_column :games, :image_updated_at, :datetime
  end
end
