class UsersController < ApplicationController

  def create
    
    Address.create(address_number: params[:address_number], addresse_main: params[:addresse_main], addresse_complement_1: params[:addresse_complement_1], addresse_complement_2: params[:addresse_complement_2], city: params[:city], postal_code: params[:postal_code], country: params[ :country])

    User.create(email: params[:email], firs_name: params[:first_name], last_name: params[:last_name], password: params[:password], password_confimation: params[:password_confimation])
  end

  def show
  end

  def update
  end

  def delete
  end
end
