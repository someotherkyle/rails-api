Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :games, only: [:index, :create]
    resources :comments, only: [:index, :create]
    resources :posts, only: [:index, :create, :show]
    resources :users, only: [:index, :create, :show]
end
