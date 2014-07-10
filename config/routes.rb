Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :salutes, only: [:index, :create]

  get "/sign_up" => "users#new", as: :sign_up
  get "/sign_in" => "sessions#new", as: :sign_in
  get "/sign_out" => "sessions#destroy", as: :sign_out
  root "salutes#index"

end
