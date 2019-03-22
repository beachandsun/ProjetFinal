class StaticsController < ApplicationController
  layout "application"
  before_action :authenticate_user!
  
  def team
  	
  end

  def favoris
  	@likes = Like.where(user_id: current_user.id)
    # @user_like = Like.where(user_id: current_user.id)
    # @like = []
    # @user_like.each do |likes|
    #   @like << Place.where(id: like.place_id) 
    # end
   
  end	

end
