Rails.application.routes.draw do
  resources :color_frames
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
