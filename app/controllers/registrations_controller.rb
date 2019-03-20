class RegistrationsController < Devise::RegistrationsController
    before_action :configure_permitted_parameters, :only => [:create, :update]
   
  
    protected

    def build_resource(hash = {})
      super
      address = Address.new
      self.resource.address_id = address.id

    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :wifi, :price, :e_outlet, :access_handi, :vibe, :vegan, :email, :password, :last_name, address_attributes: [:country, :address_number, :address_main, :address_complement_1, :address_complement_2, :city, :postal_code]])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :wifi, :price, :e_outlet, :access_handi, :vibe, :vegan, :email, :password, :last_name, address_attributes: [:country, :address_number, :address_main, :address_complement_1, :address_complement_2, :city, :postal_code]])
    end
      
  end

  