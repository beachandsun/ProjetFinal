class PlacesController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token

  
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
    @place = Place.find(params[:id])  
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
    respond_to do |format|
      if @place.update(place_params)
        format.html { redirect_to place_path(@place) }
        # format.json { render :edit, status: :ok }
      else
        format.html { render :edit }
        # format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy
    redirect_to places_path
  end


  def place_params
    params.require(:place).permit(:name, :description, :wifi, :vibe, :vegan, :access_handi, :price, :e_outlet, images: [])
  end


end
