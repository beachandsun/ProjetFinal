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
   Like.find(params[:id]).delete 
   redirect_to place_path(@place)
  end

  def already_liked?
    Like.where(user_id: current_user.id, place_id:
    params[:place_id]).exists?
  end

 private


 def find_place
   @place = Place.find(params[:place_id])
 end

 def find_like
    @like = Like.find(params[:id]).place
 end
end
