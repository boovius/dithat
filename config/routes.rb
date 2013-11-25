Dithat::Application.routes.draw do
  get "habits/create"
  namespace :api, defaults: {format: :json} do
    resources :users do
      resources :habits do
      end
    end
  end
  root to: 'pages#home'
end
