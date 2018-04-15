Rails.application.routes.draw do
  get 'welcome/index'

  resources :people
  resources :productions
  resources :colors

  resources :spotlights
  resources :spotlightmanufacturers
  resources :spotlightcues
  resources :spotlightcuedatum
  resources :positions

  root 'welcome#index'
end
