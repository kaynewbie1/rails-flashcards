Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :decks do
    resources :rounds, only: [:create]
  end

  resources :rounds, except: [:create] do
    resources :cards
  end

  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]

  get 'logout', to: "sessions#destroy", as: 'logout'

  root "decks#index"

end
