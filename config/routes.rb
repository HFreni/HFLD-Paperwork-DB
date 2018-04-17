Rails.application.routes.draw do
  resources :color_frames
  get 'welcome/index'

  resources :people
  resources :productions
  resources :colors

  resources :spotlights

  root 'welcome#index'
end
