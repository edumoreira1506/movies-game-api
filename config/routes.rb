Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'admin/dashboard#index'

  namespace :api do
    get '/setup', to: 'game#index'

    resources :ranking, only: [:index, :create]
  end
end
