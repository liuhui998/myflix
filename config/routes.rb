Myflix::Application.routes.draw do
  get 'videos', to: 'videos#index', as: "videos_path"
  get 'videos/:id',to: 'videos#show', as: "video"
  get '/home', to: 'videos#index', as: "home_path"

  get 'ui(/:action)', controller: 'ui'
end
