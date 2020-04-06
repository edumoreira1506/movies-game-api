Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'admin/dashboard#index'

  namespace :api do
    get '/setup', to: 'game#index'
    get '/category', to: 'category#index'
    get '/category/:id/movie', to: 'movie#index'

    resources :ranking, only: [:index, :create]
  end
end
