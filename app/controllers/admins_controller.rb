class AdminsController < ApplicationController
  layout "dashboard"
  before_action :deny_access, :unless => :user_is_admin
  action :index


  def index
    @admin = current_user
  end

  def show

  end

  private
  def user_is_admin
    if current_user.admin == false
      puts "tu n'es pas admin"
      redirect_to root_path
    end
  end
end
