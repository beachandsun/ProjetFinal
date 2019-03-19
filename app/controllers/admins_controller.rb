class AdminsController < ApplicationController
  layout "dashboard"
  before_action :user_is_admin, :unless => :user_is_admin
  action :index


  def index
    @admin = current_user
  end

  def show

  end

  private
  def user_is_admin
    if current_user.try(:admin?)
      puts "L'utilisateur est admin"
    else
      puts "l'utilisateur est un lambda"
      redirect_to root_path
    end
  end
end
