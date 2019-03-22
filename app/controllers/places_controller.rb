class PlacesController < ApplicationController
  before_action :authenticate_user!
  def index
    @places = Place.all
    @user_like = Like.where(user_id: current_user.id)
    @like = []
    @user_like.each do |like|
      @like << like.place_id
    end 

  end

  def new
  end

  def create
  end

  def show
    @place = Place.find(params[:id])
    @user_like = Like.where(user_id: current_user.id)
    @like = []
    @user_like.each do |like|
      @like << like.place_id
    end 
  end


  def update
    @place = Place.find(params[:id])
    if @place.update(params.require(:place).permit(:content))
      @place.pictures.attach(params[:comment][:pictures])
      redirect_to place_path(@place.id)
    else
      render root_path
    end
  end

  def delete
  end



end
