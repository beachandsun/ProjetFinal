class RegistrationsController < Devise::RegistrationsController
    before_action :configure_permitted_parameters, :only => [:create]
    before_action :create_address, :only => [:create]
   
  
    protected
  

    def create_address
    
        Address.create(address_number: params[:address_number])
        
      end
      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :last_name, :wifi, :price, :e_outlet, :access_handi, :vibe, :vegan, :email, :password) }
       
      end
      
  end

  