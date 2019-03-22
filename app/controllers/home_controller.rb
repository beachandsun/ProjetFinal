class HomeController < ApplicationController
  layout "application"
  before_action :user_is_connected
  def index

  end

  private
  def user_is_connected
    if current_user
    	redirect_to places_path
    end
  end
end
