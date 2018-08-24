Rails.application.routes.draw do


  devise_for :users

  root to: 'pages#home'

  get "/pages", to: "pages#show", as: :page_show

  resources :surveys, only: [:show] do
    resources :responses, only: [:new, :create]
  end

  resources :teams, only: [ :index ] do
    resources :surveys, only: [:index, :create]
  end

  resources :questions, only: [:show]
end

