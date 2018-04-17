Rails.application.routes.draw do
  resources :cue_master_cues
  resources :cue_spotlights
  resources :spotlight_sizes
  resources :spotlight_intensities
  resources :spotlight_actions
  resources :actions
  resources :spotlight_cues
  resources :master_cues
  resources :spotlight_positions
  resources :spotlight_models
  resources :color_frames
  get 'welcome/index'

  resources :people
  resources :productions
  resources :colors

  resources :spotlights

  root 'welcome#index'
end
