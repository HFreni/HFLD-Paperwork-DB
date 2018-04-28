# frozen_string_literal: true

Rails.application.routes.draw do
  resources :manufacturers
  resources :spot_cues_spotlights
  get 'spot_cues/matrix'
  resources :spot_cues
  resources :people
  resources :colors
  resources :spotlights
  resources :spotlight_positions
  resources :spotlight_models
  resources :color_frames


  get 'welcome/index'

  root 'welcome#index'
end
