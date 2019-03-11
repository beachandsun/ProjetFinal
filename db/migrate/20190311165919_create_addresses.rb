class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.float :latitude
      t.float :longitude
      t.string :address_number
      t.string :address_main
      t.string :address_complement_1
      t.string :address_complement_2
      t.string :city
      t.string :postal_code
      t.string :country

      t.timestamps
    end
  end
end
