Rails.application.routes.draw do
  root to: "home#index"
  resources :admin, :only => [:index]
  devise_for :users
  resources :projects


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
