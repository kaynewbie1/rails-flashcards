Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :decks

  resources :rounds do
    resources :cards
  end

  root "decks#index"

end
