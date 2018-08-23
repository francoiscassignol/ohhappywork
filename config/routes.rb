Rails.application.routes.draw do
  get 'questions/show'
  get 'teams/index'
  get 'responses/new'
  get 'surveys/show'
  get 'surveys/index'
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

