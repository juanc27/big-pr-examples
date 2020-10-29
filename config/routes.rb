Rails.application.routes.draw do
  resources :teams, only: %i[index show]
  resources :games, only: %i[index show]
end
