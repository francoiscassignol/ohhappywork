Rails.application.routes.draw do


  devise_for :users

  root to: 'pages#home'

  get "/pages", to: "pages#show", as: :page_show
  get 'review_all', to: 'surveys#review_all', as: :review_all


  resources :surveys, only: [:show] do
    resources :responses, only: [:new, :create]
    get 'review_one', to: 'surveys#review_one', as: :reviews
  end

  resources :teams, only: [ :index ] do
    resources :surveys, only: [:index, :create]
    get 'reviews_team', to: 'surveys#reviews_team', as: :reviews_team

  end

  resources :questions, only: [:show]
end

