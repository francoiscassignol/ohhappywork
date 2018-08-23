Rails.application.routes.draw do

  devise_for :users

  root to: 'teams#index'

  resources :surveys, only: [:show] do
    resources :responses, only: [:new, :create]
  end

  resources :teams, only: [ :index ] do
    resources :surveys, only: [:index]
  end

  resources :questions, only: [:show]
end

