Rails.application.routes.draw do
  get 'places/index'
  get 'places/new'
  get 'places/create'
  get 'places/update'
  devise_for :users
  root 'home#index'
  get 'dashboard', to: "dashboard#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
