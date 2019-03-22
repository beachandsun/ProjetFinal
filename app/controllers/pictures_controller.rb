class PicturesController < ApplicationController
  def create
    @place = Place.find(params[:place_id])
    @place.pictures.attach(params[:pictures])
    redirect_to(place_path(@place))
  end
end
