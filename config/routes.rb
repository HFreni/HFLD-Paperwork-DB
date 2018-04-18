# frozen_string_literal: true

Rails.application.routes.draw do
  resources :cues
  resources :cue_spotlights
  resources :people
  resources :colors
  resources :spotlights
  resources :spotlight_sizes
  resources :spotlight_intensities
  resources :spotlight_actions
  resources :spotlight_cues
  resources :spotlight_positions
  resources :spotlight_models
  resources :color_frames
  get 'welcome/index'

  root 'welcome#index'
end
