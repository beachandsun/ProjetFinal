class AddressesController < ApplicationController
  
  def create
    new_address_record = current_user.address.new(address_params)
    if new_address_record.save
      #guitar created successfully for current logged in user
    else
      #current_user.guitar.errors.full_messages
    end
  end
  
  def address_params
    params.require(:address).permit(:addresse_number, :addresse_main, :addresse_complement_1, :addresse_complement_2, :city, :postal_code, :country)
  end

  



  def read
  end

  def update
    update_address = current_user.address.update(address_params)
    current_user.address.geocoder
  end

  def delete
  end
end
