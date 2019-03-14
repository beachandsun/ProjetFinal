class UsersController < ApplicationController

  def create
    
    Address.create(address_number: "6")
    super
  end

  def show
  end

  def update
  end

  def delete
  end
end
