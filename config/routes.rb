Dithat::Application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :users do
      resources :daily_habits do
      end
      resources :weekly_habits do 
      end
      resources :monthly_habits do 
      end
    end
  end
  root to: 'pages#home'
end
