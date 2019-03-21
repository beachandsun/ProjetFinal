Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
  root 'home#index'

  resources :places do
    resources :pictures, only: [:create]
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: [:show]
  resources :addresses

  resources :admins, only: [:index]
  #get 'dashboard_test', to: "dashboard#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
