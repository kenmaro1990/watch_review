Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "reviews#index"
  resource :reviews do
    collection do
      get 'detail'
    end
  end

end
