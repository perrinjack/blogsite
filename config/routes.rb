# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  resources :posts do
    member do
      post :like
      post :destroy
      post :unlike
    end
  end


end
