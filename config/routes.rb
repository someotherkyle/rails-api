Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :game, only: [:index, :create, :show]
    resources :user, only: [:create, :show]
end
