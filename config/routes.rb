Dithat::Application.routes.draw do
  get "habits/create"
  namespace :api, defaults: {format: :json} do
    namespace :users do
      get 'week',       action: 'week'
      namespace :habits do
      end
    end
  end
  root to: 'pages#home'
end
