class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.string :description
      t.integer :phone_number
      t.string :access
      t.boolean :wifi
      t.boolean :price
      t.boolean :e_outlet
      t.boolean :access_handi
      t.string :vibe
      t.boolean :vegan
      t.belongs_to :address, index: true
      t.timestamps
    end
  end
end
