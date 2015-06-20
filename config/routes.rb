Myflix::Application.routes.draw do
  root to: "pages#front"
  
  resources :categories
  
  resources :videos, only: [:index,:show] do
    collection do
      get :search
    end
  end

  get '/home', to: 'videos#index', as: "home"
  get 'register', to: "users#new"
  get 'sign_in' , to: "sessions#new"
  get 'sign_out', to: "sessions#destroy"

  resources :users, only: [:create]
  resources :sessions, only: [:create]

  get 'ui(/:action)', controller: 'ui'

end
