Rails.application.routes.draw do
  resources :movies
  devise_for :users
  resources :pins do
    member do
      put "like", to: "pins#upvote"
    end
  end
  root "movies#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
