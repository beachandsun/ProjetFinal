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
  end

  def delete
  end

end
