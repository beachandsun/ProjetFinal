module UsersHelper

    def all_user
        User.all
    end

    def boolean_wifi
        if current_user.wifi
            return "oui"
        else 
            return "non"
        end
    end 

    def boolean_eoutlet
        if current_user.e_outlet
            return "oui"
        else 
            return "non"
        end
    end 

    def boolean_access_handi
        if current_user.access_handi
            return "oui"
        else 
            return "non"
        end
    end 

    def boolean_vegan
        if current_user.vegan
            return "oui"
        else 
            return "non"
        end
    end 
    def boolean_price
        if current_user.price
            return "expensive"
        else 
            return "cheap"
        end
    end

end
