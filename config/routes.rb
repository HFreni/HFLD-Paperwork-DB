Rails.application.routes.draw do
  get 'welcome/index'

  resources :people
  resources :productions
  resources :colors

  resources :spotlights
  resources :boomerangs
  resources :positions
  
  root 'welcome#index'
end
