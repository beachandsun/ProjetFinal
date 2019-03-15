module PlacesHelper

    def url_map
        url= "<iframe width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\"
        src=\"https://www.google.com/maps/embed/v1/place?key=#{ENV['KEY_GOOGLE_MAP']}&q=#{current_address.latitude},#{current_address.longitude}\" allowfullscreen></iframe>"
    end

    private 
    
    def current_place
        Place.find(params[:id])
    end
    
    def current_address
        Address.find(current_place.address_id)
    end
end
