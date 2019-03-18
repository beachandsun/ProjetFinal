class PlacesController < ApplicationController
  before_action :authenticate_user!
  def index
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


  private

  def blog_post_params
    params.require(:place).permit(:name, :description, :phone_number, :access, :wifi, :price, :e_outlet, :access_handi, :vibe, :vegan, :address_id, pictures: [])
  end

end
