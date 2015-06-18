Myflix::Application.routes.draw do
  root to: "pages#front"
  
  resources :categories
  
  resources :videos, only: [:index,:show] do
    collection do
      get :search
    end
  end

  get '/home', to: 'videos#index', as: "home_path"
  get 'register', to: "users#new"

  get 'ui(/:action)', controller: 'ui'

end
