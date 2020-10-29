Rails.application.routes.draw do
  resources :teams, only: %i[index show] do
    member do
      get :standings, to: 'standings#show'
    end
  end
  resources :games, only: %i[index show]
  get :standings, to: 'standings#index'
end
