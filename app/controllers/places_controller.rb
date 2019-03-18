class PlacesController < ApplicationController
  before_action :authenticate_user!
  def index
    @places = Place.all
  end

  def new
  end

  def create
  end

  def show
    @place = Place.find(params[:id])
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
