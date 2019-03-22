class FavorisController < ApplicationController
    before_action :find_place

    def create
        @place.favoris.create(user_id: current_user.id)
        redirect_to place_path(@place)
    end

    private

    def already_like?
        Favori

    end

    def find_post
        @place = Place.find(params[:place_id])
    end
end
