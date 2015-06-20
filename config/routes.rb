Myflix::Application.routes.draw do
  resources :categories

  resources :videos, only: [:index,:show] do
    collection do
      get :search
    end
  end

  get '/home', to: 'videos#index', as: "home_path"

  get 'ui(/:action)', controller: 'ui'
end
