module LikesHelper

    def like?
        @like_of_places = Array.new
        Like.all.each do |like| 
            if like.place_id = params[:id] 
                @like_of_places.push(like)
            end
        end
        @like_of_places.each do |like_of_places|
            if like_of_places.user_id == current_user.id 
                @like_id = like_of_places.id
                return true 
            end
        end
        return false
    end

    def current_like_id
        all_like = Array.new
        Like.all.each do |like| 
            if like.place_id = params[:id] 
                all_like.push(like)
            end
        end
        
        all_like.each do |like|
            if like.user_id == current_user.id
                return like
            end
        end 
    end

end






