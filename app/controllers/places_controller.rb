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

  def edit
    @places = Place.find(params[:id])  
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
    elsif @place.update(name: params[:name], descritpion: params[:description], vibe: params[:vibe], wifi: params[:wifi], price: params[:price], e_outlet: params[:e_outlet], acces_handi: params[:acces_handi], vegan: params[:vegan])
        flash[:succes] = "Event Update"
        redirect_to place_path(@place.id)
    else
      render root_path
    end
  end

  def delete
  end



end
