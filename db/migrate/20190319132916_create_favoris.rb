class CreateFavoris < ActiveRecord::Migration[5.2]
  def change
    create_table :favoris do |t|
      t.references :place, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
