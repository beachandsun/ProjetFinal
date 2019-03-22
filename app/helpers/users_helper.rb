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
    def boolean_vibe
        if current_user.vibe == "hip_hop"
            return "Hip Hop"
        elsif current_user.vibe == "lounge"
                return "Lounge"
        elsif current_user.vibe == "classic"
                    return "Classic"
        elsif current_user.vibe == "exotic"
                        return "Exotic"
        elsif current_user.vibe == "pop"
                            return "Pop"
        elsif current_user.vibe == "electronic"
                                return "Electronic"
    end
end

end
