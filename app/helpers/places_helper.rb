module PlacesHelper

    def current_place
        Place.find(params[:id])
    end
    
    def current_address
        Address.find(current_place.address_id)
    end
end
