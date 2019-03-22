class HomeController < ApplicationController
  layout "landing"
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
