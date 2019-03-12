Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :places do
    resources :pictures, only: [:create]
  end

  # get 'dashboard', to: "dashboard#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
