Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "reviews#index"
  resources :reviews do
    resources :comments, only: [:create]
  end

  resources :brands, only: [:show, :index] do
  end

end
