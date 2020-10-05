Rails.application.routes.draw do
  devise_for :users
  root "homes#index"
  get "home/about" => "homes#about"
  resources :users 
  resources :books do
  resource :favorites, only: [:create, :destroy]
  resources :post_comments, only: [:create, :destroy]
  
end
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
