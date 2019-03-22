class AddLikeCountToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :liked_count, :integer
  end
end
