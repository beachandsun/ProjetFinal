module PlacesHelper

    public

    def url_map
        url= "<iframe width=\"100%\" height=\"350\" frameborder=\"0\" style=\"border:0\"
        src=\"https://www.google.com/maps/embed/v1/place?key=#{ENV['KEY_GOOGLE_MAP']}&q=#{current_address.latitude},#{current_address.longitude}\" allowfullscreen></iframe>"
    end

    def placesMatch
        @all_places = Array.new
        @select_places = Array.new
        @tmp_places = Array.new 

        store_all_places(@all_places)
        keep_wifi_places
        keep_price_places
        keep_eOutlet_places
        keep_access_handi_places
        keep_vibe_places
        keep_vegan_places
        sort_by_distance(@tmp_places)
      end
    
      
    
      private
    
      def sort_by_distance(array_of_places)
        puts "XXX" * 50
        array_of_places.sort_by{ |place| address_of_place(place).bearing_from(address_of_user(current_user))}
      end
    
      # def distance_from(first_address_object, second_address_object)
      #   first_address_object.bearing_from(second_addres_objects)
      # end
    
      def address_of_place(place)
        Address.find(place.address_id)
      end
    
      def address_of_user(user)
        Address.find(current_user.address_id)
      end
    
      def keep_wifi_places
        @all_places.each do |place|
          if ((place.wifi == current_user.wifi) || (!current_user.wifi))
            @tmp_places.push(place)
          end
        end
        return nil
      end
    
      def keep_price_places
        @tmp_places.each do |place|
          if (place.price != current_user.price) && (!current_user.price)
            if (@tmp_places.length > 3)
                delete_place_from_array(place, @tmp_places)
            end
          end
        end
        return nil
      end
    
      def keep_eOutlet_places
        @tmp_places.each do |place|
          if (place.e_outlet != current_user.e_outlet) && (current_user.e_outlet)
            if (@tmp_places.length > 3)
                delete_place_from_array(place, @tmp_places)
            end
          end
        

        end
        
        return nil
      end
    
      def keep_access_handi_places
        @tmp_places.each do |place|
          if (place.access_handi != current_user.access_handi) && (current_user.access_handi)
            delete_place_from_array(place, @tmp_places)
          end
        end
        return nil
      end
    
      def keep_vibe_places
        @tmp_places.each do |place|
          if (place.vibe != current_user.vibe)
            if (@tmp_places.length > 3)
                delete_place_from_array(place, @tmp_places)
            end
          end
        end
        return nil
      end
    
      def keep_vegan_places
        @tmp_places.each do |place|
          if (place.vegan != current_user.vegan)
            if (@tmp_places.length > 3)
                delete_place_from_array(place, @tmp_places)
            end
          puts place

          end
          puts place

        end
        return nil
      end
    
      def delete_place_from_array(place, array)
        index_of_place = array.index(place)
        array.slice!(index_of_place)
        return nil
      end
    
      def store_all_places(places_array)
        Place.all.each do |place|
          places_array.push(place)
        end
      end
    
     
   
    def current_place
        Place.find(params[:id])
    end
    
    def current_address
        Address.find(current_place.address_id)
    end

    
end
