class LikesController < ApplicationController
    before_action :find_place
    before_action :find_like, only: [:destroy]


 def create
    if already_liked?
      flash[:notice] = "Vous ne pouvez pas liker plus d'une fois"
    else
        Like.create(user_id: current_user.id, place_id: params[:place_id])
    end
    redirect_to place_path(@place)
  end

  def destroy
    if !(already_liked?)
      flash[:notice] = "Cannot unlike"
    else
      @like.destroy
    end
    redirect_to place_like_path
  end


 private

 def already_liked?
    Like.where(user_id: current_user.id, place_id:
    params[:place_id]).exists?
  end
 
 def find_place
   @place = Place.find(params[:place_id])
   puts "*" * 100
   puts "on est dans PLACE"
   puts params
 end
 def find_like
    @like = Like.find(params[:id]).place
    puts "*" * 100
    puts "on est dans LIKE"
    puts params
 end
end
